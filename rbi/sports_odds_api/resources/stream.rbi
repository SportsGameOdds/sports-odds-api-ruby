# typed: strong

module SportsOddsAPI
  module Resources
    class Stream
      # Setup streamed (WebSocket) connection
      sig do
        params(
          event_id: String,
          feed: String,
          league_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(SportsOddsAPI::Models::StreamEventsResponse)
      end
      def events(
        # An eventID to stream events for
        event_id: nil,
        # The feed you would like to subscribe to
        feed: nil,
        # A leagueID to stream events for
        league_id: nil,
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
