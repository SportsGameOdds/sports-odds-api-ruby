# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::StreamTest < SportsOddsAPI::Test::ResourceTest
  def test_events
    response = @sports_game_odds.stream.events

    assert_pattern do
      response => SportsOddsAPI::Models::StreamEventsResponse
    end

    assert_pattern do
      response => {
        channel: String | nil,
        data: ^(SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Event]) | nil,
        pusher_key: String | nil,
        pusher_options: SportsOddsAPI::Models::StreamEventsResponse::PusherOptions | nil,
        success: SportsOddsAPI::Internal::Type::Boolean | nil,
        user: String | nil
      }
    end
  end
end
