# typed: strong

module SportsOddsAPI
  module Models
    class StreamEventsResponse < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            SportsOddsAPI::Models::StreamEventsResponse,
            SportsOddsAPI::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :channel

      sig { params(channel: String).void }
      attr_writer :channel

      sig { returns(T.nilable(T::Array[SportsOddsAPI::Event])) }
      attr_reader :data

      sig { params(data: T::Array[SportsOddsAPI::Event::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(String)) }
      attr_reader :pusher_key

      sig { params(pusher_key: String).void }
      attr_writer :pusher_key

      sig do
        returns(
          T.nilable(SportsOddsAPI::Models::StreamEventsResponse::PusherOptions)
        )
      end
      attr_reader :pusher_options

      sig do
        params(
          pusher_options:
            SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::OrHash
        ).void
      end
      attr_writer :pusher_options

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :success

      sig { params(success: T::Boolean).void }
      attr_writer :success

      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig do
        params(
          channel: String,
          data: T::Array[SportsOddsAPI::Event::OrHash],
          pusher_key: String,
          pusher_options:
            SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::OrHash,
          success: T::Boolean,
          user: String
        ).returns(T.attached_class)
      end
      def self.new(
        channel: nil,
        data: nil,
        pusher_key: nil,
        pusher_options: nil,
        success: nil,
        user: nil
      )
      end

      sig do
        override.returns(
          {
            channel: String,
            data: T::Array[SportsOddsAPI::Event],
            pusher_key: String,
            pusher_options:
              SportsOddsAPI::Models::StreamEventsResponse::PusherOptions,
            success: T::Boolean,
            user: String
          }
        )
      end
      def to_hash
      end

      class PusherOptions < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Models::StreamEventsResponse::PusherOptions,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization
            )
          )
        end
        attr_reader :channel_authorization

        sig do
          params(
            channel_authorization:
              SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization::OrHash
          ).void
        end
        attr_writer :channel_authorization

        sig { returns(T.nilable(String)) }
        attr_reader :cluster

        sig { params(cluster: String).void }
        attr_writer :cluster

        sig { returns(T.nilable(String)) }
        attr_reader :http_host

        sig { params(http_host: String).void }
        attr_writer :http_host

        sig { returns(T.nilable(Integer)) }
        attr_reader :http_port

        sig { params(http_port: Integer).void }
        attr_writer :http_port

        sig { returns(T.nilable(Integer)) }
        attr_reader :https_port

        sig { params(https_port: Integer).void }
        attr_writer :https_port

        sig { returns(T.nilable(String)) }
        attr_reader :ws_host

        sig { params(ws_host: String).void }
        attr_writer :ws_host

        sig { returns(T.nilable(Integer)) }
        attr_reader :ws_port

        sig { params(ws_port: Integer).void }
        attr_writer :ws_port

        sig { returns(T.nilable(Integer)) }
        attr_reader :wss_port

        sig { params(wss_port: Integer).void }
        attr_writer :wss_port

        sig do
          params(
            channel_authorization:
              SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization::OrHash,
            cluster: String,
            http_host: String,
            http_port: Integer,
            https_port: Integer,
            ws_host: String,
            ws_port: Integer,
            wss_port: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          channel_authorization: nil,
          cluster: nil,
          http_host: nil,
          http_port: nil,
          https_port: nil,
          ws_host: nil,
          ws_port: nil,
          wss_port: nil
        )
        end

        sig do
          override.returns(
            {
              channel_authorization:
                SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization,
              cluster: String,
              http_host: String,
              http_port: Integer,
              https_port: Integer,
              ws_host: String,
              ws_port: Integer,
              wss_port: Integer
            }
          )
        end
        def to_hash
        end

        class ChannelAuthorization < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization,
                SportsOddsAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :endpoint

          sig { params(endpoint: String).void }
          attr_writer :endpoint

          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :headers

          sig { params(headers: T::Hash[Symbol, String]).void }
          attr_writer :headers

          sig do
            params(endpoint: String, headers: T::Hash[Symbol, String]).returns(
              T.attached_class
            )
          end
          def self.new(endpoint: nil, headers: nil)
          end

          sig do
            override.returns(
              { endpoint: String, headers: T::Hash[Symbol, String] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
