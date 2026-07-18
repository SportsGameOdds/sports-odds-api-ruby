# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::MarketsTest < SportsOddsAPI::Test::ResourceTest
  def test_get
    response = @sports_game_odds.markets.get

    assert_pattern do
      response => SportsOddsAPI::Internal::NextCursorPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => SportsOddsAPI::Market
    end

    assert_pattern do
      row => {
        active_events: Float | nil,
        bet_type_id: String | nil,
        is_main_derivative: SportsOddsAPI::Internal::Type::Boolean | nil,
        is_main_market: SportsOddsAPI::Internal::Type::Boolean | nil,
        is_prop: SportsOddsAPI::Internal::Type::Boolean | nil,
        is_sub_period: SportsOddsAPI::Internal::Type::Boolean | nil,
        is_supported: SportsOddsAPI::Internal::Type::Boolean | nil,
        market_group_id: String | nil,
        market_group_name: String | nil,
        market_group_name_alias: String | nil,
        market_group_name_by_sport: ^(SportsOddsAPI::Internal::Type::HashOf[String]) | nil,
        odd_id: String | nil,
        period_id: String | nil,
        player_id: String | nil,
        prop_type: SportsOddsAPI::Market::PropType | nil,
        side_id: String | nil,
        stat_entity_id: String | nil,
        stat_id: String | nil,
        support: ^(SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Market::Support]]) | nil,
        team_id: String | nil
      }
    end
  end
end
