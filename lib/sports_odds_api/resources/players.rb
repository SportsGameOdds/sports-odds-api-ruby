# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Players
      # Some parameter documentations has been truncated, see
      # {SportsOddsAPI::Models::PlayerGetParams} for more details.
      #
      # Get a list of Players for a specific Team or Event
      #
      # @overload get(cursor: nil, event_id: nil, limit: nil, player_id: nil, team_id: nil, request_options: {})
      #
      # @param cursor [String] The cursor for the request. Used to get the next group of Players. This should b
      #
      # @param event_id [String] EventID to get Players data for
      #
      # @param limit [Float] The maximum number of Players to return
      #
      # @param player_id [String] PlayerID to get data for
      #
      # @param team_id [String] TeamID to get Players data for
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [SportsOddsAPI::Internal::NextCursorPage<SportsOddsAPI::Models::Player>]
      #
      # @see SportsOddsAPI::Models::PlayerGetParams
      def get(params = {})
        parsed, options = SportsOddsAPI::PlayerGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "players/",
          query: parsed.transform_keys(event_id: "eventID", player_id: "playerID", team_id: "teamID"),
          page: SportsOddsAPI::Internal::NextCursorPage,
          model: SportsOddsAPI::Player,
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
