# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Teams#get
    class Team < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute coach
      #
      #   @return [SportsOddsAPI::Models::Team::Coach, nil]
      optional :coach, -> { SportsOddsAPI::Team::Coach }

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

      # @!attribute owner
      #
      #   @return [SportsOddsAPI::Models::Team::Owner, nil]
      optional :owner, -> { SportsOddsAPI::Team::Owner }

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

      # @!attribute venue
      #
      #   @return [SportsOddsAPI::Models::Team::Venue, nil]
      optional :venue, -> { SportsOddsAPI::Team::Venue }

      # @!method initialize(coach: nil, colors: nil, league_id: nil, logo: nil, lookups: nil, names: nil, owner: nil, sport_id: nil, standings: nil, team_id: nil, venue: nil)
      #   @param coach [SportsOddsAPI::Models::Team::Coach]
      #   @param colors [SportsOddsAPI::Models::Team::Colors]
      #   @param league_id [String]
      #   @param logo [String]
      #   @param lookups [SportsOddsAPI::Models::Team::Lookups]
      #   @param names [SportsOddsAPI::Models::Team::Names]
      #   @param owner [SportsOddsAPI::Models::Team::Owner]
      #   @param sport_id [String]
      #   @param standings [SportsOddsAPI::Models::Team::Standings]
      #   @param team_id [String]
      #   @param venue [SportsOddsAPI::Models::Team::Venue]

      # @see SportsOddsAPI::Models::Team#coach
      class Coach < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(name: nil)
        #   @param name [String]
      end

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

      # @see SportsOddsAPI::Models::Team#owner
      class Owner < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(name: nil)
        #   @param name [String]
      end

      # @see SportsOddsAPI::Models::Team#standings
      class Standings < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute last5
        #
        #   @return [String, nil]
        optional :last5, String

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

        # @!attribute streak
        #
        #   @return [Float, nil]
        optional :streak, Float

        # @!attribute ties
        #
        #   @return [Float, nil]
        optional :ties, Float

        # @!attribute wins
        #
        #   @return [Float, nil]
        optional :wins, Float

        # @!method initialize(last5: nil, losses: nil, played: nil, position: nil, record: nil, streak: nil, ties: nil, wins: nil)
        #   @param last5 [String]
        #   @param losses [Float]
        #   @param played [Float]
        #   @param position [String]
        #   @param record [String]
        #   @param streak [Float]
        #   @param ties [Float]
        #   @param wins [Float]
      end

      # @see SportsOddsAPI::Models::Team#venue
      class Venue < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute address
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute capacity
        #
        #   @return [Float, nil]
        optional :capacity, Float

        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String, api_name: :countryCode

        # @!attribute country_name
        #
        #   @return [String, nil]
        optional :country_name, String, api_name: :countryName

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute region_code
        #
        #   @return [String, nil]
        optional :region_code, String, api_name: :regionCode

        # @!attribute region_name
        #
        #   @return [String, nil]
        optional :region_name, String, api_name: :regionName

        # @!method initialize(address: nil, capacity: nil, city: nil, country_code: nil, country_name: nil, name: nil, region_code: nil, region_name: nil)
        #   @param address [String]
        #   @param capacity [Float]
        #   @param city [String]
        #   @param country_code [String]
        #   @param country_name [String]
        #   @param name [String]
        #   @param region_code [String]
        #   @param region_name [String]
      end
    end
  end
end
