# typed: strong

module SportsOddsAPI
  module Models
    class TeamGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::TeamGetParams, SportsOddsAPI::Internal::AnyHash)
        end

      # The cursor for the request. Used to get the next group of Teams. This should be
      # the nextCursor from the prior response.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # A single leagueID or comma-separated list of leagueIDs to get Teams for
      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      # The maximum number of Teams to return
      sig { returns(T.nilable(Float)) }
      attr_reader :limit

      sig { params(limit: Float).void }
      attr_writer :limit

      # A single sportID or comma-separated list of sportIDs to get Teams for
      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      # A single teamID or comma-separated list of teamIDs to get data for
      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      sig do
        params(
          cursor: String,
          league_id: String,
          limit: Float,
          sport_id: String,
          team_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor for the request. Used to get the next group of Teams. This should be
        # the nextCursor from the prior response.
        cursor: nil,
        # A single leagueID or comma-separated list of leagueIDs to get Teams for
        league_id: nil,
        # The maximum number of Teams to return
        limit: nil,
        # A single sportID or comma-separated list of sportIDs to get Teams for
        sport_id: nil,
        # A single teamID or comma-separated list of teamIDs to get data for
        team_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: String,
            league_id: String,
            limit: Float,
            sport_id: String,
            team_id: String,
            request_options: SportsOddsAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
