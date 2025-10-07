#!/usr/bin/env ruby
# frozen_string_literal: true

require "sports_odds_api"

# Get your API key from https://sportsgameodds.com/pricing
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

puts "Sports Odds API Ruby SDK - Odds Query Example\n\n"

# Query for NFL events that are not finalized and have odds available
puts "=== Querying NFL Events with Odds ==="
puts "Filters: leagueID=NFL, finalized=false, oddsAvailable=true\n\n"

page = client.events.get(
  leagueID: "NFL",
  finalized: false,
  oddsAvailable: true,
  limit: 10
)

if page.data.empty?
  puts "No NFL events with odds found"
  exit 0
end

puts "Found #{page.data.length} NFL events with odds\n\n"

# Parse all odds markets into a map
# Structure: { eventID => { betTypeID => [markets] } }
odds_map = {}

page.data.each do |event|
  event_id = event.event_id
  odds_map[event_id] = {}

  puts "Event: #{event_id}"
  puts "  #{event.away_team_name} @ #{event.home_team_name}"

  # Check if odds exist
  next unless event.respond_to?(:odds) && event.odds

  # Group odds by betTypeID
  # Note: event.odds is a hash/object keyed by oddID, not an array
  event.odds.each_value do |odd|
    bet_type_id = odd.bet_type_id
    odds_map[event_id][bet_type_id] ||= []
    odds_map[event_id][bet_type_id] << odd
  end

  # Display summary of odds markets for this event
  if odds_map[event_id].any?
    puts "  Odds Markets:"
    odds_map[event_id].each do |bet_type_id, markets|
      puts "    betTypeID #{bet_type_id}: #{markets.length} markets"
    end
  else
    puts "  No odds markets available"
  end

  puts
end

# Display summary
puts "\n=== Summary ==="
total_events = odds_map.keys.length
total_bet_types = odds_map.values.sum { |markets| markets.keys.length }
total_markets = odds_map.values.sum { |markets| markets.values.sum(&:length) }

puts "Total events processed: #{total_events}"
puts "Total unique bet types: #{total_bet_types}"
puts "Total odds markets: #{total_markets}"

# Show example of accessing the odds map
if odds_map.any?
  first_event_id = odds_map.keys.first
  puts "\nExample - Accessing odds for event #{first_event_id}:"
  odds_map[first_event_id].each do |bet_type_id, markets|
    puts "  betTypeID #{bet_type_id}: #{markets.length} markets"
    if markets.first
      first_market = markets.first
      puts "    Sample market: bookmakerID=#{first_market.bookmaker_id}, price=#{first_market.price}"
    end
  end
end

puts "\nOdds query example completed successfully!"
