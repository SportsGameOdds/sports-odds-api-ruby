# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::TeamsTest < SportsOddsAPI::Test::ResourceTest
  def test_get
    response = @sports_game_odds.teams.get

    assert_pattern do
      response => SportsOddsAPI::Internal::NextCursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => SportsOddsAPI::Team
    end

    assert_pattern do
      row => {
        colors: SportsOddsAPI::Team::Colors | nil,
        league_id: String | nil,
        logo: String | nil,
        lookups: SportsOddsAPI::Team::Lookups | nil,
        names: SportsOddsAPI::Team::Names | nil,
        sport_id: String | nil,
        standings: SportsOddsAPI::Team::Standings | nil,
        team_id: String | nil
      }
    end
  end
end
