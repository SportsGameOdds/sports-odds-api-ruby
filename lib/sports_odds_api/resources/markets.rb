# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    # Get metadata on supported Markets
    class Markets
      # Some parameter documentations has been truncated, see
      # {SportsOddsAPI::Models::MarketGetParams} for more details.
      #
      # Get a list of Markets
      #
      # @overload get(bet_type_id: nil, bookmaker_id: nil, cursor: nil, is_main_market: nil, is_prop: nil, is_sub_period: nil, is_supported: nil, league_id: nil, limit: nil, odd_id: nil, period_id: nil, prop_type: nil, side_id: nil, sport_id: nil, stat_entity_id: nil, stat_id: nil, request_options: {})
      #
      # @param bet_type_id [String] A single betTypeID or comma-separated list of betTypeIDs to filter Markets by
      #
      # @param bookmaker_id [String] A single bookmakerID or comma-separated list of bookmakerIDs to filter Markets b
      #
      # @param cursor [String] The cursor for pagination. Use nextCursor from prior response.
      #
      # @param is_main_market [Boolean] Filter to only include main markets (main period moneyline, spread, and over/und
      #
      # @param is_prop [Boolean] Filter by whether it is any type of prop bet market
      #
      # @param is_sub_period [Boolean] Filter by whether it tracks a sub/non-main period
      #
      # @param is_supported [Boolean] Filter whether this market is fully supported by at least 1 bookmaker in at leas
      #
      # @param league_id [String] A single leagueID or comma-separated list of leagueIDs to filter Markets by
      #
      # @param limit [Float] The maximum number of Markets to return (default: 100, max: 10000)
      #
      # @param odd_id [String] A single oddID or comma-separated list of oddIDs. Used to specify specific Marke
      #
      # @param period_id [String] A single periodID or comma-separated list of periodIDs to filter Markets by
      #
      # @param prop_type [String] Filter by prop type (game_prop, team_prop, player_prop, other_prop)
      #
      # @param side_id [String] A single sideID or comma-separated list of sideIDs to filter Markets by
      #
      # @param sport_id [String] A single sportID or comma-separated list of sportIDs to filter Markets by
      #
      # @param stat_entity_id [String] A single statEntityID or comma-separated list of statEntityIDs to filter Markets
      #
      # @param stat_id [String] A single statID or comma-separated list of statIDs to filter Markets by
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [SportsOddsAPI::Internal::NextCursorPage<SportsOddsAPI::Models::Market>]
      #
      # @see SportsOddsAPI::Models::MarketGetParams
      def get(params = {})
        parsed, options = SportsOddsAPI::MarketGetParams.dump_request(params)
        query = SportsOddsAPI::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "markets/",
          query: query.transform_keys(
            bet_type_id: "betTypeID",
            bookmaker_id: "bookmakerID",
            is_main_market: "isMainMarket",
            is_prop: "isProp",
            is_sub_period: "isSubPeriod",
            is_supported: "isSupported",
            league_id: "leagueID",
            odd_id: "oddID",
            period_id: "periodID",
            prop_type: "propType",
            side_id: "sideID",
            sport_id: "sportID",
            stat_entity_id: "statEntityID",
            stat_id: "statID"
          ),
          page: SportsOddsAPI::Internal::NextCursorPage,
          model: SportsOddsAPI::Market,
          options: options
        )
      end

      # @api private
      #
      # @param client [SportsOddsAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
