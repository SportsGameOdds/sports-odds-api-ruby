# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Leagues
      # Get a list of Leagues
      #
      # @overload get(league_id: nil, sport_id: nil, request_options: {})
      #
      # @param league_id [String] The league to get data for
      #
      # @param sport_id [String] The sport to get leagues for
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<SportsOddsAPI::Models::League>]
      #
      # @see SportsOddsAPI::Models::LeagueGetParams
      def get(params = {})
        parsed, options = SportsOddsAPI::LeagueGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "leagues/",
          query: parsed.transform_keys(league_id: "leagueID", sport_id: "sportID"),
          unwrap: :data,
          model: SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::League],
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
