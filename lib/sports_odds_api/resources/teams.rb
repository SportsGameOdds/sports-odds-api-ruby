# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Teams
      # Some parameter documentations has been truncated, see
      # {SportsOddsAPI::Models::TeamGetParams} for more details.
      #
      # Get a list of Teams by ID or league
      #
      # @overload get(cursor: nil, league_id: nil, limit: nil, sport_id: nil, team_id: nil, request_options: {})
      #
      # @param cursor [String] The cursor for the request. Used to get the next group of Teams. This should be
      #
      # @param league_id [String] A single leagueID or comma-separated list of leagueIDs to get Teams for
      #
      # @param limit [Float] The maximum number of Teams to return
      #
      # @param sport_id [String] A single sportID or comma-separated list of sportIDs to get Teams for
      #
      # @param team_id [String] A single teamID or comma-separated list of teamIDs to get data for
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [SportsOddsAPI::Internal::NextCursorPage<SportsOddsAPI::Models::Team>]
      #
      # @see SportsOddsAPI::Models::TeamGetParams
      def get(params = {})
        parsed, options = SportsOddsAPI::TeamGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "teams/",
          query: parsed.transform_keys(league_id: "leagueID", sport_id: "sportID", team_id: "teamID"),
          page: SportsOddsAPI::Internal::NextCursorPage,
          model: SportsOddsAPI::Team,
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
