# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::EventsTest < SportsOddsAPI::Test::ResourceTest
  def test_get
    response = @sports_game_odds.events.get

    assert_pattern do
      response => SportsOddsAPI::Internal::NextCursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => SportsOddsAPI::Event
    end

    assert_pattern do
      row => {
        activity: SportsOddsAPI::Event::Activity | nil,
        event_id: String | nil,
        info: SportsOddsAPI::Event::Info | nil,
        league_id: String | nil,
        manual: SportsOddsAPI::Internal::Type::Boolean | nil,
        odds: ^(SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Event::Odd]) | nil,
        players: ^(SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Event::Player]) | nil,
        results: ^(SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Internal::Type::HashOf[Float]]]) | nil,
        sport_id: String | nil,
        status: SportsOddsAPI::Event::Status | nil,
        teams: SportsOddsAPI::Event::Teams | nil,
        type: String | nil
      }
    end
  end
end
