# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Markets#get
    class MarketGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      # @!attribute bet_type_id
      #   A single betTypeID or comma-separated list of betTypeIDs to filter Markets by
      #
      #   @return [String, nil]
      optional :bet_type_id, String

      # @!attribute bookmaker_id
      #   A single bookmakerID or comma-separated list of bookmakerIDs to filter Markets
      #   by
      #
      #   @return [String, nil]
      optional :bookmaker_id, String

      # @!attribute cursor
      #   The cursor for pagination. Use nextCursor from prior response.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute is_main_market
      #   Filter to only include main markets (main period moneyline, spread, and
      #   over/under)
      #
      #   @return [Boolean, nil]
      optional :is_main_market, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute is_prop
      #   Filter by whether it is any type of prop bet market
      #
      #   @return [Boolean, nil]
      optional :is_prop, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute is_sub_period
      #   Filter by whether it tracks a sub/non-main period
      #
      #   @return [Boolean, nil]
      optional :is_sub_period, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute is_supported
      #   Filter whether this market is fully supported by at least 1 bookmaker in at
      #   least 1 league. Defaults to true if not specified.
      #
      #   @return [Boolean, nil]
      optional :is_supported, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute league_id
      #   A single leagueID or comma-separated list of leagueIDs to filter Markets by
      #
      #   @return [String, nil]
      optional :league_id, String

      # @!attribute limit
      #   The maximum number of Markets to return (default: 100, max: 10000)
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute odd_id
      #   A single oddID or comma-separated list of oddIDs. Used to specify specific
      #   Markets to return.
      #
      #   @return [String, nil]
      optional :odd_id, String

      # @!attribute period_id
      #   A single periodID or comma-separated list of periodIDs to filter Markets by
      #
      #   @return [String, nil]
      optional :period_id, String

      # @!attribute prop_type
      #   Filter by prop type (game_prop, team_prop, player_prop, other_prop)
      #
      #   @return [String, nil]
      optional :prop_type, String

      # @!attribute side_id
      #   A single sideID or comma-separated list of sideIDs to filter Markets by
      #
      #   @return [String, nil]
      optional :side_id, String

      # @!attribute sport_id
      #   A single sportID or comma-separated list of sportIDs to filter Markets by
      #
      #   @return [String, nil]
      optional :sport_id, String

      # @!attribute stat_entity_id
      #   A single statEntityID or comma-separated list of statEntityIDs to filter Markets
      #   by
      #
      #   @return [String, nil]
      optional :stat_entity_id, String

      # @!attribute stat_id
      #   A single statID or comma-separated list of statIDs to filter Markets by
      #
      #   @return [String, nil]
      optional :stat_id, String

      # @!method initialize(bet_type_id: nil, bookmaker_id: nil, cursor: nil, is_main_market: nil, is_prop: nil, is_sub_period: nil, is_supported: nil, league_id: nil, limit: nil, odd_id: nil, period_id: nil, prop_type: nil, side_id: nil, sport_id: nil, stat_entity_id: nil, stat_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {SportsOddsAPI::Models::MarketGetParams} for more details.
      #
      #   @param bet_type_id [String] A single betTypeID or comma-separated list of betTypeIDs to filter Markets by
      #
      #   @param bookmaker_id [String] A single bookmakerID or comma-separated list of bookmakerIDs to filter Markets b
      #
      #   @param cursor [String] The cursor for pagination. Use nextCursor from prior response.
      #
      #   @param is_main_market [Boolean] Filter to only include main markets (main period moneyline, spread, and over/und
      #
      #   @param is_prop [Boolean] Filter by whether it is any type of prop bet market
      #
      #   @param is_sub_period [Boolean] Filter by whether it tracks a sub/non-main period
      #
      #   @param is_supported [Boolean] Filter whether this market is fully supported by at least 1 bookmaker in at leas
      #
      #   @param league_id [String] A single leagueID or comma-separated list of leagueIDs to filter Markets by
      #
      #   @param limit [Float] The maximum number of Markets to return (default: 100, max: 10000)
      #
      #   @param odd_id [String] A single oddID or comma-separated list of oddIDs. Used to specify specific Marke
      #
      #   @param period_id [String] A single periodID or comma-separated list of periodIDs to filter Markets by
      #
      #   @param prop_type [String] Filter by prop type (game_prop, team_prop, player_prop, other_prop)
      #
      #   @param side_id [String] A single sideID or comma-separated list of sideIDs to filter Markets by
      #
      #   @param sport_id [String] A single sportID or comma-separated list of sportIDs to filter Markets by
      #
      #   @param stat_entity_id [String] A single statEntityID or comma-separated list of statEntityIDs to filter Markets
      #
      #   @param stat_id [String] A single statID or comma-separated list of statIDs to filter Markets by
      #
      #   @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
