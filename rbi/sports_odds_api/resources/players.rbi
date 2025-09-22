# typed: strong

module SportsOddsAPI
  module Resources
    class Players
      # Get a list of Players for a specific Team or Event
      sig do
        params(
          cursor: String,
          event_id: String,
          limit: Float,
          player_id: String,
          team_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(
          SportsOddsAPI::Internal::NextCursorPage[SportsOddsAPI::Player]
        )
      end
      def get(
        # The cursor for the request. Used to get the next group of Players. This should
        # be the nextCursor from the prior response.
        cursor: nil,
        # EventID to get Players data for
        event_id: nil,
        # The maximum number of Players to return
        limit: nil,
        # PlayerID to get data for
        player_id: nil,
        # TeamID to get Players data for
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
