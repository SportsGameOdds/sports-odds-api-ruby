# typed: strong

module SportsOddsAPI
  module Models
    class League < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::League, SportsOddsAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :short_name

      sig { params(short_name: String).void }
      attr_writer :short_name

      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      sig do
        params(
          enabled: T::Boolean,
          league_id: String,
          name: String,
          short_name: String,
          sport_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        enabled: nil,
        league_id: nil,
        name: nil,
        short_name: nil,
        sport_id: nil
      )
      end

      sig do
        override.returns(
          {
            enabled: T::Boolean,
            league_id: String,
            name: String,
            short_name: String,
            sport_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
