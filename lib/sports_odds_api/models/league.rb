# frozen_string_literal: true

module SportsOddsAPI
  module Models
    class League < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute enabled
      #
      #   @return [Boolean, nil]
      optional :enabled, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute league_id
      #
      #   @return [String, nil]
      optional :league_id, String, api_name: :leagueID

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute short_name
      #
      #   @return [String, nil]
      optional :short_name, String, api_name: :shortName

      # @!attribute sport_id
      #
      #   @return [String, nil]
      optional :sport_id, String, api_name: :sportID

      # @!method initialize(enabled: nil, league_id: nil, name: nil, short_name: nil, sport_id: nil)
      #   @param enabled [Boolean]
      #   @param league_id [String]
      #   @param name [String]
      #   @param short_name [String]
      #   @param sport_id [String]
    end
  end
end
