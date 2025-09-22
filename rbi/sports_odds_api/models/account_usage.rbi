# typed: strong

module SportsOddsAPI
  module Models
    class AccountUsage < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::AccountUsage, SportsOddsAPI::Internal::AnyHash)
        end

      # The Stripe customer ID for the account
      sig { returns(T.nilable(String)) }
      attr_reader :customer_id

      sig { params(customer_id: String).void }
      attr_writer :customer_id

      # The email address associated with the account
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Whether the API key is active
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_active

      sig { params(is_active: T::Boolean).void }
      attr_writer :is_active

      # The hashed identifier for the API key
      sig { returns(T.nilable(String)) }
      attr_reader :key_id

      sig { params(key_id: String).void }
      attr_writer :key_id

      sig { returns(T.nilable(SportsOddsAPI::AccountUsage::RateLimits)) }
      attr_reader :rate_limits

      sig do
        params(
          rate_limits: SportsOddsAPI::AccountUsage::RateLimits::OrHash
        ).void
      end
      attr_writer :rate_limits

      # The current subscription tier
      sig { returns(T.nilable(String)) }
      attr_reader :tier

      sig { params(tier: String).void }
      attr_writer :tier

      sig do
        params(
          customer_id: String,
          email: String,
          is_active: T::Boolean,
          key_id: String,
          rate_limits: SportsOddsAPI::AccountUsage::RateLimits::OrHash,
          tier: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The Stripe customer ID for the account
        customer_id: nil,
        # The email address associated with the account
        email: nil,
        # Whether the API key is active
        is_active: nil,
        # The hashed identifier for the API key
        key_id: nil,
        rate_limits: nil,
        # The current subscription tier
        tier: nil
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            email: String,
            is_active: T::Boolean,
            key_id: String,
            rate_limits: SportsOddsAPI::AccountUsage::RateLimits,
            tier: String
          }
        )
      end
      def to_hash
      end

      class RateLimits < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::AccountUsage::RateLimits,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(SportsOddsAPI::RateLimitInterval)) }
        attr_reader :per_day

        sig { params(per_day: SportsOddsAPI::RateLimitInterval::OrHash).void }
        attr_writer :per_day

        sig { returns(T.nilable(SportsOddsAPI::RateLimitInterval)) }
        attr_reader :per_hour

        sig { params(per_hour: SportsOddsAPI::RateLimitInterval::OrHash).void }
        attr_writer :per_hour

        sig { returns(T.nilable(SportsOddsAPI::RateLimitInterval)) }
        attr_reader :per_minute

        sig do
          params(per_minute: SportsOddsAPI::RateLimitInterval::OrHash).void
        end
        attr_writer :per_minute

        sig { returns(T.nilable(SportsOddsAPI::RateLimitInterval)) }
        attr_reader :per_month

        sig { params(per_month: SportsOddsAPI::RateLimitInterval::OrHash).void }
        attr_writer :per_month

        sig { returns(T.nilable(SportsOddsAPI::RateLimitInterval)) }
        attr_reader :per_second

        sig do
          params(per_second: SportsOddsAPI::RateLimitInterval::OrHash).void
        end
        attr_writer :per_second

        sig do
          params(
            per_day: SportsOddsAPI::RateLimitInterval::OrHash,
            per_hour: SportsOddsAPI::RateLimitInterval::OrHash,
            per_minute: SportsOddsAPI::RateLimitInterval::OrHash,
            per_month: SportsOddsAPI::RateLimitInterval::OrHash,
            per_second: SportsOddsAPI::RateLimitInterval::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          per_day: nil,
          per_hour: nil,
          per_minute: nil,
          per_month: nil,
          per_second: nil
        )
        end

        sig do
          override.returns(
            {
              per_day: SportsOddsAPI::RateLimitInterval,
              per_hour: SportsOddsAPI::RateLimitInterval,
              per_minute: SportsOddsAPI::RateLimitInterval,
              per_month: SportsOddsAPI::RateLimitInterval,
              per_second: SportsOddsAPI::RateLimitInterval
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
