# typed: strong

module SportsOddsAPI
  module Models
    class StreamEventsParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            SportsOddsAPI::StreamEventsParams,
            SportsOddsAPI::Internal::AnyHash
          )
        end

      # An eventID to stream events for
      sig { returns(T.nilable(String)) }
      attr_reader :event_id

      sig { params(event_id: String).void }
      attr_writer :event_id

      # The feed you would like to subscribe to
      sig { returns(T.nilable(String)) }
      attr_reader :feed

      sig { params(feed: String).void }
      attr_writer :feed

      # A leagueID to stream events for
      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      sig do
        params(
          event_id: String,
          feed: String,
          league_id: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An eventID to stream events for
        event_id: nil,
        # The feed you would like to subscribe to
        feed: nil,
        # A leagueID to stream events for
        league_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            event_id: String,
            feed: String,
            league_id: String,
            request_options: SportsOddsAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
