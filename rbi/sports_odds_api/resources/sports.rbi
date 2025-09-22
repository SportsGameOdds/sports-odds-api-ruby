# typed: strong

module SportsOddsAPI
  module Resources
    class Sports
      # Get a list of sports
      sig do
        params(request_options: SportsOddsAPI::RequestOptions::OrHash).returns(
          T::Array[SportsOddsAPI::Sport]
        )
      end
      def get(request_options: {})
      end

      # @api private
      sig { params(client: SportsOddsAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
