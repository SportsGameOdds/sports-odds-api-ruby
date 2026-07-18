# typed: strong

module SportsOddsAPI
  module Models
    class MarketGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            SportsOddsAPI::MarketGetParams,
            SportsOddsAPI::Internal::AnyHash
          )
        end

      # A single betTypeID or comma-separated list of betTypeIDs to filter Markets by
      sig { returns(T.nilable(String)) }
      attr_reader :bet_type_id

      sig { params(bet_type_id: String).void }
      attr_writer :bet_type_id

      # A single bookmakerID or comma-separated list of bookmakerIDs to filter Markets
      # by
      sig { returns(T.nilable(String)) }
      attr_reader :bookmaker_id

      sig { params(bookmaker_id: String).void }
      attr_writer :bookmaker_id

      # The cursor for pagination. Use nextCursor from prior response.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Filter to only include main markets (main period moneyline, spread, and
      # over/under)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_main_market

      sig { params(is_main_market: T::Boolean).void }
      attr_writer :is_main_market

      # Filter by whether it is any type of prop bet market
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_prop

      sig { params(is_prop: T::Boolean).void }
      attr_writer :is_prop

      # Filter by whether it tracks a sub/non-main period
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_sub_period

      sig { params(is_sub_period: T::Boolean).void }
      attr_writer :is_sub_period

      # Filter whether this market is fully supported by at least 1 bookmaker in at
      # least 1 league. Defaults to true if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_supported

      sig { params(is_supported: T::Boolean).void }
      attr_writer :is_supported

      # A single leagueID or comma-separated list of leagueIDs to filter Markets by
      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      # The maximum number of Markets to return (default: 100, max: 10000)
      sig { returns(T.nilable(Float)) }
      attr_reader :limit

      sig { params(limit: Float).void }
      attr_writer :limit

      # A single oddID or comma-separated list of oddIDs. Used to specify specific
      # Markets to return.
      sig { returns(T.nilable(String)) }
      attr_reader :odd_id

      sig { params(odd_id: String).void }
      attr_writer :odd_id

      # A single periodID or comma-separated list of periodIDs to filter Markets by
      sig { returns(T.nilable(String)) }
      attr_reader :period_id

      sig { params(period_id: String).void }
      attr_writer :period_id

      # Filter by prop type (game_prop, team_prop, player_prop, other_prop)
      sig { returns(T.nilable(String)) }
      attr_reader :prop_type

      sig { params(prop_type: String).void }
      attr_writer :prop_type

      # A single sideID or comma-separated list of sideIDs to filter Markets by
      sig { returns(T.nilable(String)) }
      attr_reader :side_id

      sig { params(side_id: String).void }
      attr_writer :side_id

      # A single sportID or comma-separated list of sportIDs to filter Markets by
      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      # A single statEntityID or comma-separated list of statEntityIDs to filter Markets
      # by
      sig { returns(T.nilable(String)) }
      attr_reader :stat_entity_id

      sig { params(stat_entity_id: String).void }
      attr_writer :stat_entity_id

      # A single statID or comma-separated list of statIDs to filter Markets by
      sig { returns(T.nilable(String)) }
      attr_reader :stat_id

      sig { params(stat_id: String).void }
      attr_writer :stat_id

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: SportsOddsAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
