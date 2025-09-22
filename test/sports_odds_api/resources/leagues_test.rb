# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::LeaguesTest < SportsOddsAPI::Test::ResourceTest
  def test_get
    response = @sports_game_odds.leagues.get

    assert_pattern do
      response => ^(SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::League])
    end
  end
end
