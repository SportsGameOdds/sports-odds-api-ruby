# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Teams#get
    class TeamGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      # @!attribute cursor
      #   The cursor for the request. Used to get the next group of Teams. This should be
      #   the nextCursor from the prior response.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute league_id
      #   A single leagueID or comma-separated list of leagueIDs to get Teams for
      #
      #   @return [String, nil]
      optional :league_id, String

      # @!attribute limit
      #   The maximum number of Teams to return
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute sport_id
      #   A single sportID or comma-separated list of sportIDs to get Teams for
      #
      #   @return [String, nil]
      optional :sport_id, String

      # @!attribute team_id
      #   A single teamID or comma-separated list of teamIDs to get data for
      #
      #   @return [String, nil]
      optional :team_id, String

      # @!method initialize(cursor: nil, league_id: nil, limit: nil, sport_id: nil, team_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {SportsOddsAPI::Models::TeamGetParams} for more details.
      #
      #   @param cursor [String] The cursor for the request. Used to get the next group of Teams. This should be
      #
      #   @param league_id [String] A single leagueID or comma-separated list of leagueIDs to get Teams for
      #
      #   @param limit [Float] The maximum number of Teams to return
      #
      #   @param sport_id [String] A single sportID or comma-separated list of sportIDs to get Teams for
      #
      #   @param team_id [String] A single teamID or comma-separated list of teamIDs to get data for
      #
      #   @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
