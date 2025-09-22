# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Teams#get
    class Team < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute colors
      #
      #   @return [SportsOddsAPI::Models::Team::Colors, nil]
      optional :colors, -> { SportsOddsAPI::Team::Colors }

      # @!attribute league_id
      #
      #   @return [String, nil]
      optional :league_id, String, api_name: :leagueID

      # @!attribute logo
      #
      #   @return [String, nil]
      optional :logo, String

      # @!attribute lookups
      #
      #   @return [SportsOddsAPI::Models::Team::Lookups, nil]
      optional :lookups, -> { SportsOddsAPI::Team::Lookups }

      # @!attribute names
      #
      #   @return [SportsOddsAPI::Models::Team::Names, nil]
      optional :names, -> { SportsOddsAPI::Team::Names }

      # @!attribute sport_id
      #
      #   @return [String, nil]
      optional :sport_id, String, api_name: :sportID

      # @!attribute standings
      #
      #   @return [SportsOddsAPI::Models::Team::Standings, nil]
      optional :standings, -> { SportsOddsAPI::Team::Standings }

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, api_name: :teamID

      # @!method initialize(colors: nil, league_id: nil, logo: nil, lookups: nil, names: nil, sport_id: nil, standings: nil, team_id: nil)
      #   @param colors [SportsOddsAPI::Models::Team::Colors]
      #   @param league_id [String]
      #   @param logo [String]
      #   @param lookups [SportsOddsAPI::Models::Team::Lookups]
      #   @param names [SportsOddsAPI::Models::Team::Names]
      #   @param sport_id [String]
      #   @param standings [SportsOddsAPI::Models::Team::Standings]
      #   @param team_id [String]

      # @see SportsOddsAPI::Models::Team#colors
      class Colors < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute primary
        #
        #   @return [String, nil]
        optional :primary, String

        # @!attribute primary_contrast
        #
        #   @return [String, nil]
        optional :primary_contrast, String, api_name: :primaryContrast

        # @!attribute secondary
        #
        #   @return [String, nil]
        optional :secondary, String

        # @!attribute secondary_contrast
        #
        #   @return [String, nil]
        optional :secondary_contrast, String, api_name: :secondaryContrast

        # @!method initialize(primary: nil, primary_contrast: nil, secondary: nil, secondary_contrast: nil)
        #   @param primary [String]
        #   @param primary_contrast [String]
        #   @param secondary [String]
        #   @param secondary_contrast [String]
      end

      # @see SportsOddsAPI::Models::Team#lookups
      class Lookups < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute team_name
        #
        #   @return [Array<String>, nil]
        optional :team_name, SportsOddsAPI::Internal::Type::ArrayOf[String], api_name: :teamName

        # @!method initialize(team_name: nil)
        #   @param team_name [Array<String>]
      end

      # @see SportsOddsAPI::Models::Team#names
      class Names < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute long
        #
        #   @return [String, nil]
        optional :long, String

        # @!attribute medium
        #
        #   @return [String, nil]
        optional :medium, String

        # @!attribute short
        #
        #   @return [String, nil]
        optional :short, String

        # @!method initialize(long: nil, medium: nil, short: nil)
        #   @param long [String]
        #   @param medium [String]
        #   @param short [String]
      end

      # @see SportsOddsAPI::Models::Team#standings
      class Standings < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute losses
        #
        #   @return [Float, nil]
        optional :losses, Float

        # @!attribute played
        #
        #   @return [Float, nil]
        optional :played, Float

        # @!attribute position
        #
        #   @return [String, nil]
        optional :position, String

        # @!attribute record
        #
        #   @return [String, nil]
        optional :record, String

        # @!attribute ties
        #
        #   @return [Float, nil]
        optional :ties, Float

        # @!attribute wins
        #
        #   @return [Float, nil]
        optional :wins, Float

        # @!method initialize(losses: nil, played: nil, position: nil, record: nil, ties: nil, wins: nil)
        #   @param losses [Float]
        #   @param played [Float]
        #   @param position [String]
        #   @param record [String]
        #   @param ties [Float]
        #   @param wins [Float]
      end
    end
  end
end
