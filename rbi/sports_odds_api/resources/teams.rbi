# typed: strong

module SportsOddsAPI
  module Resources
    class Teams
      # Get a list of Teams by ID or league
      sig do
        params(
          cursor: String,
          league_id: String,
          limit: Float,
          sport_id: String,
          team_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(SportsOddsAPI::Internal::NextCursorPage[SportsOddsAPI::Team])
      end
      def get(
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

      # @api private
      sig { params(client: SportsOddsAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
