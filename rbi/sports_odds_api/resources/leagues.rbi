# typed: strong

module SportsOddsAPI
  module Resources
    class Leagues
      # Get a list of Leagues
      sig do
        params(
          league_id: String,
          sport_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(T::Array[SportsOddsAPI::League])
      end
      def get(
        # The league to get data for
        league_id: nil,
        # The sport to get leagues for
        sport_id: nil,
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
