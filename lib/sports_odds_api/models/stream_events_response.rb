# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Stream#events
    class StreamEventsResponse < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute channel
      #
      #   @return [String, nil]
      optional :channel, String

      # @!attribute data
      #
      #   @return [Array<SportsOddsAPI::Models::Event>, nil]
      optional :data, -> { SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Event] }

      # @!attribute pusher_key
      #
      #   @return [String, nil]
      optional :pusher_key, String, api_name: :pusherKey

      # @!attribute pusher_options
      #
      #   @return [SportsOddsAPI::Models::StreamEventsResponse::PusherOptions, nil]
      optional :pusher_options,
               -> { SportsOddsAPI::Models::StreamEventsResponse::PusherOptions },
               api_name: :pusherOptions

      # @!attribute success
      #
      #   @return [Boolean, nil]
      optional :success, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute user
      #
      #   @return [String, nil]
      optional :user, String

      # @!method initialize(channel: nil, data: nil, pusher_key: nil, pusher_options: nil, success: nil, user: nil)
      #   @param channel [String]
      #   @param data [Array<SportsOddsAPI::Models::Event>]
      #   @param pusher_key [String]
      #   @param pusher_options [SportsOddsAPI::Models::StreamEventsResponse::PusherOptions]
      #   @param success [Boolean]
      #   @param user [String]

      # @see SportsOddsAPI::Models::StreamEventsResponse#pusher_options
      class PusherOptions < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute channel_authorization
        #
        #   @return [SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization, nil]
        optional :channel_authorization,
                 -> { SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization },
                 api_name: :channelAuthorization

        # @!attribute cluster
        #
        #   @return [String, nil]
        optional :cluster, String

        # @!attribute http_host
        #
        #   @return [String, nil]
        optional :http_host, String, api_name: :httpHost

        # @!attribute http_port
        #
        #   @return [Integer, nil]
        optional :http_port, Integer, api_name: :httpPort

        # @!attribute https_port
        #
        #   @return [Integer, nil]
        optional :https_port, Integer, api_name: :httpsPort

        # @!attribute ws_host
        #
        #   @return [String, nil]
        optional :ws_host, String, api_name: :wsHost

        # @!attribute ws_port
        #
        #   @return [Integer, nil]
        optional :ws_port, Integer, api_name: :wsPort

        # @!attribute wss_port
        #
        #   @return [Integer, nil]
        optional :wss_port, Integer, api_name: :wssPort

        # @!method initialize(channel_authorization: nil, cluster: nil, http_host: nil, http_port: nil, https_port: nil, ws_host: nil, ws_port: nil, wss_port: nil)
        #   @param channel_authorization [SportsOddsAPI::Models::StreamEventsResponse::PusherOptions::ChannelAuthorization]
        #   @param cluster [String]
        #   @param http_host [String]
        #   @param http_port [Integer]
        #   @param https_port [Integer]
        #   @param ws_host [String]
        #   @param ws_port [Integer]
        #   @param wss_port [Integer]

        # @see SportsOddsAPI::Models::StreamEventsResponse::PusherOptions#channel_authorization
        class ChannelAuthorization < SportsOddsAPI::Internal::Type::BaseModel
          # @!attribute endpoint
          #
          #   @return [String, nil]
          optional :endpoint, String

          # @!attribute headers
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :headers, SportsOddsAPI::Internal::Type::HashOf[String]

          # @!method initialize(endpoint: nil, headers: nil)
          #   @param endpoint [String]
          #   @param headers [Hash{Symbol=>String}]
        end
      end
    end
  end
end
