# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Leagues#get
    class LeagueGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      # @!attribute league_id
      #   The league to get data for
      #
      #   @return [String, nil]
      optional :league_id, String

      # @!attribute sport_id
      #   The sport to get leagues for
      #
      #   @return [String, nil]
      optional :sport_id, String

      # @!method initialize(league_id: nil, sport_id: nil, request_options: {})
      #   @param league_id [String] The league to get data for
      #
      #   @param sport_id [String] The sport to get leagues for
      #
      #   @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
