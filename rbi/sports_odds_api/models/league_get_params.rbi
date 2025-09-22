# typed: strong

module SportsOddsAPI
  module Models
    class LeagueGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            SportsOddsAPI::LeagueGetParams,
            SportsOddsAPI::Internal::AnyHash
          )
        end

      # The league to get data for
      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      # The sport to get leagues for
      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      sig do
        params(
          league_id: String,
          sport_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The league to get data for
        league_id: nil,
        # The sport to get leagues for
        sport_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            league_id: String,
            sport_id: String,
            request_options: SportsOddsAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
