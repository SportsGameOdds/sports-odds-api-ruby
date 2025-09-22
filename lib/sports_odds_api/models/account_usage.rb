# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Account#get_usage
    class AccountUsage < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute customer_id
      #   The Stripe customer ID for the account
      #
      #   @return [String, nil]
      optional :customer_id, String, api_name: :customerID

      # @!attribute email
      #   The email address associated with the account
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute is_active
      #   Whether the API key is active
      #
      #   @return [Boolean, nil]
      optional :is_active, SportsOddsAPI::Internal::Type::Boolean, api_name: :isActive

      # @!attribute key_id
      #   The hashed identifier for the API key
      #
      #   @return [String, nil]
      optional :key_id, String, api_name: :keyID

      # @!attribute rate_limits
      #
      #   @return [SportsOddsAPI::Models::AccountUsage::RateLimits, nil]
      optional :rate_limits, -> { SportsOddsAPI::AccountUsage::RateLimits }, api_name: :rateLimits

      # @!attribute tier
      #   The current subscription tier
      #
      #   @return [String, nil]
      optional :tier, String

      # @!method initialize(customer_id: nil, email: nil, is_active: nil, key_id: nil, rate_limits: nil, tier: nil)
      #   @param customer_id [String] The Stripe customer ID for the account
      #
      #   @param email [String] The email address associated with the account
      #
      #   @param is_active [Boolean] Whether the API key is active
      #
      #   @param key_id [String] The hashed identifier for the API key
      #
      #   @param rate_limits [SportsOddsAPI::Models::AccountUsage::RateLimits]
      #
      #   @param tier [String] The current subscription tier

      # @see SportsOddsAPI::Models::AccountUsage#rate_limits
      class RateLimits < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute per_day
        #
        #   @return [SportsOddsAPI::Models::RateLimitInterval, nil]
        optional :per_day, -> { SportsOddsAPI::RateLimitInterval }, api_name: :"per-day"

        # @!attribute per_hour
        #
        #   @return [SportsOddsAPI::Models::RateLimitInterval, nil]
        optional :per_hour, -> { SportsOddsAPI::RateLimitInterval }, api_name: :"per-hour"

        # @!attribute per_minute
        #
        #   @return [SportsOddsAPI::Models::RateLimitInterval, nil]
        optional :per_minute, -> { SportsOddsAPI::RateLimitInterval }, api_name: :"per-minute"

        # @!attribute per_month
        #
        #   @return [SportsOddsAPI::Models::RateLimitInterval, nil]
        optional :per_month, -> { SportsOddsAPI::RateLimitInterval }, api_name: :"per-month"

        # @!attribute per_second
        #
        #   @return [SportsOddsAPI::Models::RateLimitInterval, nil]
        optional :per_second, -> { SportsOddsAPI::RateLimitInterval }, api_name: :"per-second"

        # @!method initialize(per_day: nil, per_hour: nil, per_minute: nil, per_month: nil, per_second: nil)
        #   @param per_day [SportsOddsAPI::Models::RateLimitInterval]
        #   @param per_hour [SportsOddsAPI::Models::RateLimitInterval]
        #   @param per_minute [SportsOddsAPI::Models::RateLimitInterval]
        #   @param per_month [SportsOddsAPI::Models::RateLimitInterval]
        #   @param per_second [SportsOddsAPI::Models::RateLimitInterval]
      end
    end
  end
end
