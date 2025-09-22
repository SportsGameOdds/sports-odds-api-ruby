# typed: strong

module SportsOddsAPI
  module Models
    class AccountGetUsageParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            SportsOddsAPI::AccountGetUsageParams,
            SportsOddsAPI::Internal::AnyHash
          )
        end

      sig do
        params(request_options: SportsOddsAPI::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: SportsOddsAPI::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
