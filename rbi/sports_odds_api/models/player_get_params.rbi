# typed: strong

module SportsOddsAPI
  module Models
    class PlayerGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            SportsOddsAPI::PlayerGetParams,
            SportsOddsAPI::Internal::AnyHash
          )
        end

      # The cursor for the request. Used to get the next group of Players. This should
      # be the nextCursor from the prior response.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # EventID to get Players data for
      sig { returns(T.nilable(String)) }
      attr_reader :event_id

      sig { params(event_id: String).void }
      attr_writer :event_id

      # The maximum number of Players to return
      sig { returns(T.nilable(Float)) }
      attr_reader :limit

      sig { params(limit: Float).void }
      attr_writer :limit

      # PlayerID to get data for
      sig { returns(T.nilable(String)) }
      attr_reader :player_id

      sig { params(player_id: String).void }
      attr_writer :player_id

      # TeamID to get Players data for
      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      sig do
        params(
          cursor: String,
          event_id: String,
          limit: Float,
          player_id: String,
          team_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The cursor for the request. Used to get the next group of Players. This should
        # be the nextCursor from the prior response.
        cursor: nil,
        # EventID to get Players data for
        event_id: nil,
        # The maximum number of Players to return
        limit: nil,
        # PlayerID to get data for
        player_id: nil,
        # TeamID to get Players data for
        team_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            cursor: String,
            event_id: String,
            limit: Float,
            player_id: String,
            team_id: String,
            request_options: SportsOddsAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
