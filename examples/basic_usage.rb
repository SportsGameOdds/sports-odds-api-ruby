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

puts "Sports Odds API Ruby SDK - Basic Usage Examples\n\n"

# Example 1: Fetch recent events
puts "=== Fetching Events ==="
page = client.events.get(limit: 10)

if page.data.empty?
  puts "No events found"
else
  puts "Found #{page.data.length} events:"
  page.data.first(3).each do |event|
    puts "  - #{event.event_id}: #{event.activity}"
  end
end

# Example 2: Auto-pagination
puts "\n=== Auto-Pagination Example ==="
page = client.events.get(limit: 5)
count = 0

page.auto_paging_each do |event|
  count += 1
  puts "  Event #{count}: #{event.event_id}" if count <= 10
  break if count >= 15 # Limit for demo purposes
end

puts "Processed #{count} events across multiple pages"

# Example 3: Error handling
puts "\n=== Error Handling Example ==="
begin
  client.events.get(eventIDs: "invalid-id")
rescue SportsOddsAPI::Errors::NotFoundError => e
  puts("Caught NotFoundError: #{e.message}")
rescue SportsOddsAPI::Errors::APIError => e
  puts("Caught APIError: #{e.class.name}")
end

puts "\nExamples completed successfully!"
