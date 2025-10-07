#!/usr/bin/env ruby
# frozen_string_literal: true

# TODO: remove this in your implementation
unless defined?(PusherClient)
  # rubocop:disable Lint/EmptyClass
  class PusherClient
    class Socket; end
  end
  # rubocop:enable Lint/EmptyClass
end

require "sports_odds_api"
require "pusher-client"

# Get your API key from https://sportsgameodds.com/pricing
# Note: Streaming requires an AllStar plan subscription
API_KEY = ENV["SPORTS_ODDS_API_KEY_HEADER"]

unless API_KEY
  puts "Error: SPORTS_ODDS_API_KEY_HEADER environment variable not set"
  puts "Usage: export SPORTS_ODDS_API_KEY_HEADER='your-api-key-here'"
  exit 1
end

# Initialize the client
client = SportsOddsAPI::Client.new(
  api_key_param: API_KEY,
  timeout: 30,
  max_retries: 2
)

puts "Sports Odds API Ruby SDK - Streaming Example"
puts "Note: Streaming requires an AllStar plan subscription\n\n"

begin
  STREAM_FEED = "events:live" # Options: events:upcoming, events:byid, events:live

  puts("=== Setting up Event Stream ===")
  puts("Feed: #{STREAM_FEED}\n\n")

  # Initialize a data structure where we'll save the event data
  events = {}

  # Call this endpoint to get initial data and connection parameters
  puts("Fetching stream info and initial data...")
  stream_info = client.stream.events(feed: STREAM_FEED)

  # Seed initial data
  stream_info.data.each do |event|
    events[event.event_id] = event
  end

  puts("✓ Loaded #{events.size} initial events")
  puts("✓ Connecting to WebSocket...")

  # Connect to WebSocket server
  pusher = PusherClient::Socket.new(stream_info.pusher_key, stream_info.pusher_options)

  # Subscribe to the channel
  channel = pusher.subscribe(stream_info.channel)

  # Bind to the 'data' event
  channel.bind("data") do |changed_events|
    puts("\n[#{Time.now.strftime('%H:%M:%S')}] Received update for #{changed_events.length} event(s)")

    # Get the eventIDs that changed
    event_ids = changed_events.map { |e| e["eventID"] }.join(",")

    # Get the full event data for the changed events
    updated_events = client.events.get(eventIDs: event_ids)

    updated_events.data.each do |event|
      # Update our data with the full event data
      events[event.event_id] = event

      puts("  Updated: #{event.event_id}")
      if event.respond_to?(:away_team_name) && event.respond_to?(:home_team_name)
        puts("    #{event.away_team_name} @ #{event.home_team_name}")
      end
      if event.respond_to?(:activity)
        puts("    Activity: #{event.activity}")
      end
    end
  end

  # Connect to Pusher
  pusher.connect(true) # true = async

  puts("✓ Connected! Listening for updates...")
  puts("Press Ctrl+C to stop\n\n")

  # Handle graceful shutdown
  trap("INT") do
    puts("\n\nDisconnecting...")
    pusher.disconnect
    puts("✓ Disconnected from stream")
    exit(0)
  end

  # Keep the script running
  loop do
    sleep(1)
  end
rescue SportsOddsAPI::Errors::PermissionDeniedError => e
  puts("✗ Error: Streaming requires an AllStar plan subscription")
  puts("Visit https://sportsgameodds.com/pricing to upgrade your plan")
rescue SportsOddsAPI::Errors::APIError => e
  puts("✗ API Error: #{e.message}")
  puts("Error type: #{e.class.name}")
rescue LoadError => e
  puts("✗ Missing dependency: pusher-client gem")
  puts("Install it with: gem install pusher-client")
rescue StandardError => e
  puts("✗ Unexpected error: #{e.message}")
  puts("Error type: #{e.class.name}")
  puts(e.backtrace.first(5))
end
