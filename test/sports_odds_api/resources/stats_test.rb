# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::StatsTest < SportsOddsAPI::Test::ResourceTest
  def test_get
    response = @sports_game_odds.stats.get

    assert_pattern do
      response => ^(SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Stat])
    end
  end
end
