# typed: strong

module SportsOddsAPI
  module Resources
    class Account
      # Get rate-limits and usage data about your API key
      sig do
        params(request_options: SportsOddsAPI::RequestOptions::OrHash).returns(
          SportsOddsAPI::AccountUsage
        )
      end
      def get_usage(request_options: {})
      end

      # @api private
      sig { params(client: SportsOddsAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
