# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Account
      # Get rate-limits and usage data about your API key
      #
      # @overload get_usage(request_options: {})
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [SportsOddsAPI::Models::AccountUsage]
      #
      # @see SportsOddsAPI::Models::AccountGetUsageParams
      def get_usage(params = {})
        @client.request(
          method: :get,
          path: "account/usage",
          unwrap: :data,
          model: SportsOddsAPI::AccountUsage,
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
