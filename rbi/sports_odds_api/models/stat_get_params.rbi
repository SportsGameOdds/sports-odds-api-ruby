# typed: strong

module SportsOddsAPI
  module Models
    class StatGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::StatGetParams, SportsOddsAPI::Internal::AnyHash)
        end

      # SportID to get StatIDs for
      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      # StatID to get data for
      sig { returns(T.nilable(String)) }
      attr_reader :stat_id

      sig { params(stat_id: String).void }
      attr_writer :stat_id

      # Level of the stat, must be used in combination with sportID. Must be one of all,
      # player, or team. Shows stats that are applicable to that specified entity,
      # defaults to all.
      sig { returns(T.nilable(String)) }
      attr_reader :stat_level

      sig { params(stat_level: String).void }
      attr_writer :stat_level

      sig do
        params(
          sport_id: String,
          stat_id: String,
          stat_level: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            sport_id: String,
            stat_id: String,
            stat_level: String,
            request_options: SportsOddsAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
