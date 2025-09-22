# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::PlayersTest < SportsOddsAPI::Test::ResourceTest
  def test_get
    response = @sports_game_odds.players.get

    assert_pattern do
      response => SportsOddsAPI::Internal::NextCursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => SportsOddsAPI::Player
    end

    assert_pattern do
      row => {
        aliases: ^(SportsOddsAPI::Internal::Type::ArrayOf[String]) | nil,
        jersey_number: Float | nil,
        league_id: String | nil,
        lookups: SportsOddsAPI::Player::Lookups | nil,
        names: SportsOddsAPI::Player::Names | nil,
        player_id: String | nil,
        player_teams: ^(SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Player::PlayerTeam]) | nil,
        position: String | nil,
        sport_id: String | nil,
        team_id: String | nil
      }
    end
  end
end
