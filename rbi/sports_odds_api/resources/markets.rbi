# typed: strong

module SportsOddsAPI
  module Resources
    # Get metadata on supported Markets
    class Markets
      # Get a list of Markets
      sig do
        params(
          bet_type_id: String,
          bookmaker_id: String,
          cursor: String,
          is_main_market: T::Boolean,
          is_prop: T::Boolean,
          is_sub_period: T::Boolean,
          is_supported: T::Boolean,
          league_id: String,
          limit: Float,
          odd_id: String,
          period_id: String,
          prop_type: String,
          side_id: String,
          sport_id: String,
          stat_entity_id: String,
          stat_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(
          SportsOddsAPI::Internal::NextCursorPage[SportsOddsAPI::Market]
        )
      end
      def get(
        # A single betTypeID or comma-separated list of betTypeIDs to filter Markets by
        bet_type_id: nil,
        # A single bookmakerID or comma-separated list of bookmakerIDs to filter Markets
        # by
        bookmaker_id: nil,
        # The cursor for pagination. Use nextCursor from prior response.
        cursor: nil,
        # Filter to only include main markets (main period moneyline, spread, and
        # over/under)
        is_main_market: nil,
        # Filter by whether it is any type of prop bet market
        is_prop: nil,
        # Filter by whether it tracks a sub/non-main period
        is_sub_period: nil,
        # Filter whether this market is fully supported by at least 1 bookmaker in at
        # least 1 league. Defaults to true if not specified.
        is_supported: nil,
        # A single leagueID or comma-separated list of leagueIDs to filter Markets by
        league_id: nil,
        # The maximum number of Markets to return (default: 100, max: 10000)
        limit: nil,
        # A single oddID or comma-separated list of oddIDs. Used to specify specific
        # Markets to return.
        odd_id: nil,
        # A single periodID or comma-separated list of periodIDs to filter Markets by
        period_id: nil,
        # Filter by prop type (game_prop, team_prop, player_prop, other_prop)
        prop_type: nil,
        # A single sideID or comma-separated list of sideIDs to filter Markets by
        side_id: nil,
        # A single sportID or comma-separated list of sportIDs to filter Markets by
        sport_id: nil,
        # A single statEntityID or comma-separated list of statEntityIDs to filter Markets
        # by
        stat_entity_id: nil,
        # A single statID or comma-separated list of statIDs to filter Markets by
        stat_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: SportsOddsAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
