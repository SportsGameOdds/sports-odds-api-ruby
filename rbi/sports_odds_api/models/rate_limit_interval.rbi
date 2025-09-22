# typed: strong

module SportsOddsAPI
  module Models
    class RateLimitInterval < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            SportsOddsAPI::RateLimitInterval,
            SportsOddsAPI::Internal::AnyHash
          )
        end

      # Current number of entities accessed in the interval
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_entities

      sig { params(current_entities: Integer).void }
      attr_writer :current_entities

      # Current number of requests made in the interval
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_requests

      sig { params(current_requests: Integer).void }
      attr_writer :current_requests

      # Maximum allowed entity accesses in the interval
      sig do
        returns(
          T.nilable(SportsOddsAPI::RateLimitInterval::MaxEntities::Variants)
        )
      end
      attr_reader :max_entities

      sig do
        params(
          max_entities:
            T.any(
              SportsOddsAPI::RateLimitInterval::MaxEntities::OrSymbol,
              Integer
            )
        ).void
      end
      attr_writer :max_entities

      # Maximum allowed requests in the interval
      sig do
        returns(
          T.nilable(SportsOddsAPI::RateLimitInterval::MaxRequests::Variants)
        )
      end
      attr_reader :max_requests

      sig do
        params(
          max_requests:
            T.any(
              SportsOddsAPI::RateLimitInterval::MaxRequests::OrSymbol,
              Integer
            )
        ).void
      end
      attr_writer :max_requests

      sig do
        params(
          current_entities: Integer,
          current_requests: Integer,
          max_entities:
            T.any(
              SportsOddsAPI::RateLimitInterval::MaxEntities::OrSymbol,
              Integer
            ),
          max_requests:
            T.any(
              SportsOddsAPI::RateLimitInterval::MaxRequests::OrSymbol,
              Integer
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Current number of entities accessed in the interval
        current_entities: nil,
        # Current number of requests made in the interval
        current_requests: nil,
        # Maximum allowed entity accesses in the interval
        max_entities: nil,
        # Maximum allowed requests in the interval
        max_requests: nil
      )
      end

      sig do
        override.returns(
          {
            current_entities: Integer,
            current_requests: Integer,
            max_entities:
              SportsOddsAPI::RateLimitInterval::MaxEntities::Variants,
            max_requests:
              SportsOddsAPI::RateLimitInterval::MaxRequests::Variants
          }
        )
      end
      def to_hash
      end

      # Maximum allowed entity accesses in the interval
      module MaxEntities
        extend SportsOddsAPI::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              SportsOddsAPI::RateLimitInterval::MaxEntities::TaggedSymbol,
              Integer
            )
          end

        sig do
          override.returns(
            T::Array[SportsOddsAPI::RateLimitInterval::MaxEntities::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, SportsOddsAPI::RateLimitInterval::MaxEntities)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNLIMITED =
          T.let(
            :unlimited,
            SportsOddsAPI::RateLimitInterval::MaxEntities::TaggedSymbol
          )
      end

      # Maximum allowed requests in the interval
      module MaxRequests
        extend SportsOddsAPI::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              SportsOddsAPI::RateLimitInterval::MaxRequests::TaggedSymbol,
              Integer
            )
          end

        sig do
          override.returns(
            T::Array[SportsOddsAPI::RateLimitInterval::MaxRequests::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, SportsOddsAPI::RateLimitInterval::MaxRequests)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNLIMITED =
          T.let(
            :unlimited,
            SportsOddsAPI::RateLimitInterval::MaxRequests::TaggedSymbol
          )
      end
    end
  end
end
