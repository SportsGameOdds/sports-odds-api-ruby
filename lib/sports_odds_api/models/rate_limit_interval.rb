# frozen_string_literal: true

module SportsOddsAPI
  module Models
    class RateLimitInterval < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute current_entities
      #   Current number of entities accessed in the interval
      #
      #   @return [Integer, nil]
      optional :current_entities, Integer, api_name: :"current-entities"

      # @!attribute current_requests
      #   Current number of requests made in the interval
      #
      #   @return [Integer, nil]
      optional :current_requests, Integer, api_name: :"current-requests"

      # @!attribute max_entities
      #   Maximum allowed entity accesses in the interval
      #
      #   @return [Symbol, Integer, SportsOddsAPI::Models::RateLimitInterval::MaxEntities, nil]
      optional :max_entities,
               union: -> { SportsOddsAPI::RateLimitInterval::MaxEntities },
               api_name: :"max-entities"

      # @!attribute max_requests
      #   Maximum allowed requests in the interval
      #
      #   @return [Symbol, Integer, SportsOddsAPI::Models::RateLimitInterval::MaxRequests, nil]
      optional :max_requests,
               union: -> { SportsOddsAPI::RateLimitInterval::MaxRequests },
               api_name: :"max-requests"

      # @!method initialize(current_entities: nil, current_requests: nil, max_entities: nil, max_requests: nil)
      #   @param current_entities [Integer] Current number of entities accessed in the interval
      #
      #   @param current_requests [Integer] Current number of requests made in the interval
      #
      #   @param max_entities [Symbol, Integer, SportsOddsAPI::Models::RateLimitInterval::MaxEntities] Maximum allowed entity accesses in the interval
      #
      #   @param max_requests [Symbol, Integer, SportsOddsAPI::Models::RateLimitInterval::MaxRequests] Maximum allowed requests in the interval

      # Maximum allowed entity accesses in the interval
      #
      # @see SportsOddsAPI::Models::RateLimitInterval#max_entities
      module MaxEntities
        extend SportsOddsAPI::Internal::Type::Union

        variant const: -> { SportsOddsAPI::Models::RateLimitInterval::MaxEntities::UNLIMITED }

        variant Integer

        # @!method self.variants
        #   @return [Array(Symbol, Integer)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(SportsOddsAPI::RateLimitInterval::MaxEntities::TaggedSymbol, Integer) }
        end

        # @!group

        UNLIMITED = :unlimited

        # @!endgroup
      end

      # Maximum allowed requests in the interval
      #
      # @see SportsOddsAPI::Models::RateLimitInterval#max_requests
      module MaxRequests
        extend SportsOddsAPI::Internal::Type::Union

        variant const: -> { SportsOddsAPI::Models::RateLimitInterval::MaxRequests::UNLIMITED }

        variant Integer

        # @!method self.variants
        #   @return [Array(Symbol, Integer)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(SportsOddsAPI::RateLimitInterval::MaxRequests::TaggedSymbol, Integer) }
        end

        # @!group

        UNLIMITED = :unlimited

        # @!endgroup
      end
    end
  end
end
