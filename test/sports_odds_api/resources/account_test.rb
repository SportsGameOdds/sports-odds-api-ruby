# frozen_string_literal: true

require_relative "../test_helper"

class SportsOddsAPI::Test::Resources::AccountTest < SportsOddsAPI::Test::ResourceTest
  def test_get_usage
    response = @sports_game_odds.account.get_usage

    assert_pattern do
      response => SportsOddsAPI::AccountUsage
    end

    assert_pattern do
      response => {
        customer_id: String | nil,
        email: String | nil,
        is_active: SportsOddsAPI::Internal::Type::Boolean | nil,
        key_id: String | nil,
        rate_limits: SportsOddsAPI::AccountUsage::RateLimits | nil,
        tier: String | nil
      }
    end
  end
end
