# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Stream#events
    class StreamEventsParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      # @!attribute event_id
      #   An eventID to stream events for
      #
      #   @return [String, nil]
      optional :event_id, String

      # @!attribute feed
      #   The feed you would like to subscribe to
      #
      #   @return [String, nil]
      optional :feed, String

      # @!attribute league_id
      #   A leagueID to stream events for
      #
      #   @return [String, nil]
      optional :league_id, String

      # @!method initialize(event_id: nil, feed: nil, league_id: nil, request_options: {})
      #   @param event_id [String] An eventID to stream events for
      #
      #   @param feed [String] The feed you would like to subscribe to
      #
      #   @param league_id [String] A leagueID to stream events for
      #
      #   @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
