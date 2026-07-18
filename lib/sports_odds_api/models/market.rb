# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Markets#get
    class Market < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute active_events
      #   The number of unique active events with available odds for this market across
      #   all supported league and bookmaker combinations.
      #
      #   @return [Float, nil]
      optional :active_events, Float, api_name: :activeEvents

      # @!attribute bet_type_id
      #   The type of bet
      #
      #   @return [String, nil]
      optional :bet_type_id, String, api_name: :betTypeID

      # @!attribute is_main_derivative
      #   True if this is a sub-period of a main market
      #
      #   @return [Boolean, nil]
      optional :is_main_derivative, SportsOddsAPI::Internal::Type::Boolean, api_name: :isMainDerivative

      # @!attribute is_main_market
      #   True if this is a main market
      #
      #   @return [Boolean, nil]
      optional :is_main_market, SportsOddsAPI::Internal::Type::Boolean, api_name: :isMainMarket

      # @!attribute is_prop
      #   True if this is a prop bet
      #
      #   @return [Boolean, nil]
      optional :is_prop, SportsOddsAPI::Internal::Type::Boolean, api_name: :isProp

      # @!attribute is_sub_period
      #   True if this market is for a sub-period
      #
      #   @return [Boolean, nil]
      optional :is_sub_period, SportsOddsAPI::Internal::Type::Boolean, api_name: :isSubPeriod

      # @!attribute is_supported
      #   True if this market is supported by at least one league/bookmaker.
      #
      #   @return [Boolean, nil]
      optional :is_supported, SportsOddsAPI::Internal::Type::Boolean, api_name: :isSupported

      # @!attribute market_group_id
      #   The unique identifier for the group (all sides of the market) this market
      #   belongs to
      #
      #   @return [String, nil]
      optional :market_group_id, String, api_name: :marketGroupID

      # @!attribute market_group_name
      #   The primary display name for this market's group
      #
      #   @return [String, nil]
      optional :market_group_name, String, api_name: :marketGroupName

      # @!attribute market_group_name_alias
      #   An alternative display name for this market's group
      #
      #   @return [String, nil]
      optional :market_group_name_alias, String, api_name: :marketGroupNameAlias

      # @!attribute market_group_name_by_sport
      #   Sport-specific market group names when they differ from the primary name
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :market_group_name_by_sport,
               SportsOddsAPI::Internal::Type::HashOf[String],
               api_name: :marketGroupNameBySport

      # @!attribute odd_id
      #   The unique identifier for this market
      #
      #   @return [String, nil]
      optional :odd_id, String, api_name: :oddID

      # @!attribute period_id
      #   The period of the event this market applies to
      #
      #   @return [String, nil]
      optional :period_id, String, api_name: :periodID

      # @!attribute player_id
      #   Set to a player's unique playerID if it's a player prop
      #
      #   @return [String, nil]
      optional :player_id, String, api_name: :playerID

      # @!attribute prop_type
      #   The type of prop bet
      #
      #   @return [Symbol, SportsOddsAPI::Models::Market::PropType, nil]
      optional :prop_type, enum: -> { SportsOddsAPI::Market::PropType }, api_name: :propType

      # @!attribute side_id
      #   The side of the bet
      #
      #   @return [String, nil]
      optional :side_id, String, api_name: :sideID

      # @!attribute stat_entity_id
      #   The statEntityID represents whose performance on the stat is being evaluated
      #
      #   @return [String, nil]
      optional :stat_entity_id, String, api_name: :statEntityID

      # @!attribute stat_id
      #   The statistic which is being evaluated as a part of this market
      #
      #   @return [String, nil]
      optional :stat_id, String, api_name: :statID

      # @!attribute support
      #   Nested object showing which leagues and bookmakers support this market.
      #
      #   @return [Hash{Symbol=>Hash{Symbol=>SportsOddsAPI::Models::Market::Support}}, nil]
      optional :support,
               -> { SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Market::Support]] }

      # @!attribute team_id
      #   Set to team's unique teamID if it's a team prop for a tournament type event
      #
      #   @return [String, nil]
      optional :team_id, String, api_name: :teamID

      # @!method initialize(active_events: nil, bet_type_id: nil, is_main_derivative: nil, is_main_market: nil, is_prop: nil, is_sub_period: nil, is_supported: nil, market_group_id: nil, market_group_name: nil, market_group_name_alias: nil, market_group_name_by_sport: nil, odd_id: nil, period_id: nil, player_id: nil, prop_type: nil, side_id: nil, stat_entity_id: nil, stat_id: nil, support: nil, team_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {SportsOddsAPI::Models::Market} for more details.
      #
      #   @param active_events [Float] The number of unique active events with available odds for this market across al
      #
      #   @param bet_type_id [String] The type of bet
      #
      #   @param is_main_derivative [Boolean] True if this is a sub-period of a main market
      #
      #   @param is_main_market [Boolean] True if this is a main market
      #
      #   @param is_prop [Boolean] True if this is a prop bet
      #
      #   @param is_sub_period [Boolean] True if this market is for a sub-period
      #
      #   @param is_supported [Boolean] True if this market is supported by at least one league/bookmaker.
      #
      #   @param market_group_id [String] The unique identifier for the group (all sides of the market) this market belong
      #
      #   @param market_group_name [String] The primary display name for this market's group
      #
      #   @param market_group_name_alias [String] An alternative display name for this market's group
      #
      #   @param market_group_name_by_sport [Hash{Symbol=>String}] Sport-specific market group names when they differ from the primary name
      #
      #   @param odd_id [String] The unique identifier for this market
      #
      #   @param period_id [String] The period of the event this market applies to
      #
      #   @param player_id [String] Set to a player's unique playerID if it's a player prop
      #
      #   @param prop_type [Symbol, SportsOddsAPI::Models::Market::PropType] The type of prop bet
      #
      #   @param side_id [String] The side of the bet
      #
      #   @param stat_entity_id [String] The statEntityID represents whose performance on the stat is being evaluated
      #
      #   @param stat_id [String] The statistic which is being evaluated as a part of this market
      #
      #   @param support [Hash{Symbol=>Hash{Symbol=>SportsOddsAPI::Models::Market::Support}}] Nested object showing which leagues and bookmakers support this market.
      #
      #   @param team_id [String] Set to team's unique teamID if it's a team prop for a tournament type event

      # The type of prop bet
      #
      # @see SportsOddsAPI::Models::Market#prop_type
      module PropType
        extend SportsOddsAPI::Internal::Type::Enum

        GAME_PROP = :game_prop
        TEAM_PROP = :team_prop
        PLAYER_PROP = :player_prop
        OTHER_PROP = :other_prop

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Support < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute supported
        #   Whether this market is supported for the given league and bookmaker combination.
        #
        #   @return [Boolean, nil]
        optional :supported, SportsOddsAPI::Internal::Type::Boolean

        # @!method initialize(supported: nil)
        #   Some parameter documentations has been truncated, see
        #   {SportsOddsAPI::Models::Market::Support} for more details.
        #
        #   @param supported [Boolean] Whether this market is supported for the given league and bookmaker combination.
      end
    end
  end
end
