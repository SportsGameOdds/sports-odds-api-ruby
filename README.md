# Sports Odds API - Live Sports Data & Sportsbook Betting Odds - Powered by SportsGameOdds Ruby Library

Get live betting odds, spreads, and totals for NFL, NBA, MLB, and 50 additional sports and leagues. Production-ready Ruby SDK with connection pooling, 99.9% uptime, and sub-minute updates during live games. Perfect for developers building sportsbook platforms, odds comparison tools, positive EV models, and anything else that requires fast, accurate sports data.

[![Gem Version](https://img.shields.io/gem/v/sports-odds-api.svg?label=rubygems%20(stable))](https://rubygems.org/gems/sports-odds-api)

This library provides convenient access to the Sports Game Odds REST API from any Ruby 3.2.0+ application.

The REST API documentation can be found on [sportsgameodds.com](https://sportsgameodds.com/docs/). The full API of this library can be found in [api.md](api.md).

## Features

**For developers building the next generation of sports stats and/or betting applications:**

- 📈 **3k+ odds markets** including moneylines, spreads, over/unders, team props, player props & more
- 🏈 **50+ leagues covered** including NFL, NBA, MLB, NHL, NCAAF, NCAAB, EPL, UCL, UFC, PGA, ATP & more
- 📊 **80+ sportsbooks** with unified odds formats, alt lines & deeplinks
- 📺 **Live scores & stats** coverage on all games, teams, and players
- ⚡ **Sub-100ms response times** and sub-minute updates for fast data
- 💎 **Comprehensive Ruby type support** with Yard, RBS, and RBI definitions
- 💰 **Developer-friendly pricing** with a generous free tier
- ⏱️ **5-minute setup** with copy-paste examples

## Installation

Add to your application's `Gemfile`:

```ruby
gem "sports-odds-api", "~> 0.0.1"
```

Or install manually:

```sh
gem install sports-odds-api
```

## Obtain an API Key

Get a free API key from [sportsgameodds.com](https://sportsgameodds.com/pricing).

Unlike enterprise-only solutions, the Sports Game Odds API offers a developer-friendly experience, transparent pricing, comprehensive documentation, and a generous free tier.

## Usage

The full API of this library can be found in [api.md](api.md).

```ruby
require "bundler/setup"
require "sports_odds_api"

client = SportsOddsAPI::Client.new(
  api_key_param: ENV["SPORTS_ODDS_API_KEY_HEADER"] # This is the default and can be omitted
)

page = client.events.get
event = page.data[0]

puts(event.activity)
```

# Real-Time Event Streaming API

This API endpoint is only available to **AllStar** and **custom plan** subscribers. It is not included with basic subscription tiers. [Contact support](mailto:api@sportsgameodds.com) to get access.

This streaming API is currently in **beta**. API call patterns, response formats, and functionality may change. Fully managed streaming via SDK may be available in future releases.

Our Streaming API provides real-time updates for Event objects through WebSocket connections. Instead of polling our REST endpoints, you can maintain a persistent connection to receive instant notifications when events change. This is ideal for applications that need immediate updates with minimal delay.

We use [Pusher Protocol](https://pusher.com/docs/channels/library_auth_reference/pusher-websockets-protocol/) for WebSocket communication. While you can connect using any WebSocket library, we recommend using the [pusher-client-ruby](https://github.com/pusher/pusher-client-ruby) gem.

## How It Works

The streaming process involves two steps:

1. **Get Connection Details**: Make a request using `client.stream.events()` to receive:
    - WebSocket authentication credentials
    - WebSocket URL/channel info
    - Initial snapshot of current data

2. **Connect and Stream**: Use the provided details to connect via Pusher and receive real-time `eventID` notifications for changed events.

Your API key will have limits on concurrent streams.

## Available Feeds

Subscribe to different feeds using the `feed` query parameter:

| Feed              | Description                                                                 | Required Parameters |
| ----------------- | --------------------------------------------------------------------------- | ------------------- |
| `events:live`     | All events currently in progress (started but not finished)                | None                |
| `events:upcoming` | Upcoming events with available odds for a specific league                  | `leagueID`          |
| `events:byid`     | Updates for a single specific event                                         | `eventID`           |

The number of supported feeds will increase over time. Please reach out if you have a use case which can't be covered by these feeds.

## Quick Start Example

Here's the minimal code to connect to live events:

```ruby
require "sports_odds_api"
require "pusher-client"

STREAM_FEED = "events:live" # ex: events:upcoming, events:byid, events:live
API_KEY = "YOUR API KEY"

client = SportsOddsAPI::Client.new(api_key_param: API_KEY)

# Initialize a data structure where we'll save the event data
events = {}

# Call this endpoint to get initial data and connection parameters
stream_info = client.stream.events(feed: STREAM_FEED)

# Seed initial data
stream_info.data.each { |event| events[event.eventID] = event }

# Connect to WebSocket server
pusher = PusherClient::Socket.new(stream_info.pusherKey, stream_info.pusherOptions)
channel = pusher.subscribe(stream_info.channel)

channel.bind("data") do |changed_events|
  event_ids = changed_events.map { |ev| ev["eventID"] }.join(",")

  client.events.get(eventIDs: event_ids).each do |event|
    events[event.eventID] = event
  end
end

trap("SIGINT") { pusher.disconnect }
pusher.connect
```

## Pagination

List methods in the Sports Game Odds API are paginated.

This library provides auto-paginating iterators with each list response:

```ruby
page = client.events.get(limit: 30)

page.auto_paging_each do |event|
  puts(event.activity)
end
```

Or, you can use `#next_page?` and `#next_page` for manual pagination.

## Handling Errors

When the library is unable to connect to the API, or if the API returns a non-success status code (4xx or 5xx), a subclass of `SportsOddsAPI::Errors::APIError` will be thrown.

```ruby
begin
  page = client.events.get
rescue SportsOddsAPI::Errors::APIError => e
  puts(e.message)
end
```

Error codes map to specific exception classes, such as `AuthenticationError`, `RateLimitError`, `NotFoundError`, etc.

## Retries

Certain errors are retried automatically with exponential backoff. Configure retries globally or per-request with the `max_retries` option.

## Timeouts

Requests time out after 60 seconds by default. Configure with `timeout` globally or per-request.

## Advanced Usage

- Access undocumented params via `extra_query`, `extra_body`, and `extra_headers`
- Use `client.request` for undocumented endpoints
- Threadsafe client with connection pooling
- Sorbet integration via RBI & RBS definitions

## Requirements

- Ruby 3.2.0+

## Contributing

See [the contributing documentation](https://github.com/SportsGameOdds/sports-odds-api-ruby/tree/main/CONTRIBUTING.md).
