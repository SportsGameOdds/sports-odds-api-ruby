# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Stream
      # Setup streamed (WebSocket) connection
      #
      # @overload events(event_id: nil, feed: nil, league_id: nil, request_options: {})
      #
      # @param event_id [String] An eventID to stream events for
      #
      # @param feed [String] The feed you would like to subscribe to
      #
      # @param league_id [String] A leagueID to stream events for
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [SportsOddsAPI::Models::StreamEventsResponse]
      #
      # @see SportsOddsAPI::Models::StreamEventsParams
      def events(params = {})
        parsed, options = SportsOddsAPI::StreamEventsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "stream/events",
          query: parsed.transform_keys(event_id: "eventID", league_id: "leagueID"),
          model: SportsOddsAPI::Models::StreamEventsResponse,
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
