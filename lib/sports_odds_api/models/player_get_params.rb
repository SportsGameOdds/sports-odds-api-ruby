# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Players#get
    class PlayerGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      # @!attribute cursor
      #   The cursor for the request. Used to get the next group of Players. This should
      #   be the nextCursor from the prior response.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute event_id
      #   EventID to get Players data for
      #
      #   @return [String, nil]
      optional :event_id, String

      # @!attribute limit
      #   The maximum number of Players to return
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute player_id
      #   PlayerID to get data for
      #
      #   @return [String, nil]
      optional :player_id, String

      # @!attribute team_id
      #   TeamID to get Players data for
      #
      #   @return [String, nil]
      optional :team_id, String

      # @!method initialize(cursor: nil, event_id: nil, limit: nil, player_id: nil, team_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {SportsOddsAPI::Models::PlayerGetParams} for more details.
      #
      #   @param cursor [String] The cursor for the request. Used to get the next group of Players. This should b
      #
      #   @param event_id [String] EventID to get Players data for
      #
      #   @param limit [Float] The maximum number of Players to return
      #
      #   @param player_id [String] PlayerID to get data for
      #
      #   @param team_id [String] TeamID to get Players data for
      #
      #   @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
