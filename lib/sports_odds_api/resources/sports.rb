# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Sports
      # Get a list of sports
      #
      # @overload get(request_options: {})
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<SportsOddsAPI::Models::Sport>]
      #
      # @see SportsOddsAPI::Models::SportGetParams
      def get(params = {})
        @client.request(
          method: :get,
          path: "sports/",
          unwrap: :data,
          model: SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Sport],
          options: params[:request_options]
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
