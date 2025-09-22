# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Stats
      # Some parameter documentations has been truncated, see
      # {SportsOddsAPI::Models::StatGetParams} for more details.
      #
      # Get a list of StatIDs
      #
      # @overload get(sport_id: nil, stat_id: nil, stat_level: nil, request_options: {})
      #
      # @param sport_id [String] SportID to get StatIDs for
      #
      # @param stat_id [String] StatID to get data for
      #
      # @param stat_level [String] Level of the stat, must be used in combination with sportID. Must be one of all,
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<SportsOddsAPI::Models::Stat>]
      #
      # @see SportsOddsAPI::Models::StatGetParams
      def get(params = {})
        parsed, options = SportsOddsAPI::StatGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "stats/",
          query: parsed.transform_keys(sport_id: "sportID", stat_id: "statID", stat_level: "statLevel"),
          unwrap: :data,
          model: SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Stat],
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
