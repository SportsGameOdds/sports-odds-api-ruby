# typed: strong

module SportsOddsAPI
  module Resources
    class Stats
      # Get a list of StatIDs
      sig do
        params(
          sport_id: String,
          stat_id: String,
          stat_level: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(T::Array[SportsOddsAPI::Stat])
      end
      def get(
        # SportID to get StatIDs for
        sport_id: nil,
        # StatID to get data for
        stat_id: nil,
        # Level of the stat, must be used in combination with sportID. Must be one of all,
        # player, or team. Shows stats that are applicable to that specified entity,
        # defaults to all.
        stat_level: nil,
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
