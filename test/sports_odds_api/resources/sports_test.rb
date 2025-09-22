# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::SportsTest < SportsOddsAPI::Test::ResourceTest
  def test_get
    response = @sports_game_odds.sports.get

    assert_pattern do
      response => ^(SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Sport])
    end
  end
end
