# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Players#get
    class Player < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute aliases
      #
      #   @return [Array<String>, nil]
      optional :aliases, SportsOddsAPI::Internal::Type::ArrayOf[String]

      # @!attribute jersey_number
      #
      #   @return [Float, nil]
      optional :jersey_number, Float, api_name: :jerseyNumber

      # @!attribute league_id
      #
      #   @return [String, nil]
      optional :league_id, String, api_name: :leagueID

      # @!attribute lookups
      #
      #   @return [SportsOddsAPI::Models::Player::Lookups, nil]
      optional :lookups, -> { SportsOddsAPI::Player::Lookups }

      # @!attribute names
      #
      #   @return [SportsOddsAPI::Models::Player::Names, nil]
      optional :names, -> { SportsOddsAPI::Player::Names }

      # @!attribute player_id
      #
      #   @return [String, nil]
      optional :player_id, String, api_name: :playerID

      # @!attribute player_teams
      #
      #   @return [Hash{Symbol=>SportsOddsAPI::Models::Player::PlayerTeam}, nil]
      optional :player_teams,
               -> { SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Player::PlayerTeam] },
               api_name: :playerTeams

      # @!attribute position
      #
      #   @return [String, nil]
      optional :position, String

      # @!attribute sport_id
      #
      #   @return [String, nil]
      optional :sport_id, String, api_name: :sportID

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, api_name: :teamID

      # @!method initialize(aliases: nil, jersey_number: nil, league_id: nil, lookups: nil, names: nil, player_id: nil, player_teams: nil, position: nil, sport_id: nil, team_id: nil)
      #   @param aliases [Array<String>]
      #   @param jersey_number [Float]
      #   @param league_id [String]
      #   @param lookups [SportsOddsAPI::Models::Player::Lookups]
      #   @param names [SportsOddsAPI::Models::Player::Names]
      #   @param player_id [String]
      #   @param player_teams [Hash{Symbol=>SportsOddsAPI::Models::Player::PlayerTeam}]
      #   @param position [String]
      #   @param sport_id [String]
      #   @param team_id [String]

      # @see SportsOddsAPI::Models::Player#lookups
      class Lookups < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute any_name
        #
        #   @return [Array<String>, nil]
        optional :any_name, SportsOddsAPI::Internal::Type::ArrayOf[String], api_name: :anyName

        # @!attribute full_name
        #
        #   @return [Array<String>, nil]
        optional :full_name, SportsOddsAPI::Internal::Type::ArrayOf[String], api_name: :fullName

        # @!attribute initials
        #
        #   @return [Array<String>, nil]
        optional :initials, SportsOddsAPI::Internal::Type::ArrayOf[String]

        # @!method initialize(any_name: nil, full_name: nil, initials: nil)
        #   @param any_name [Array<String>]
        #   @param full_name [Array<String>]
        #   @param initials [Array<String>]
      end

      # @see SportsOddsAPI::Models::Player#names
      class Names < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute display_
        #
        #   @return [String, nil]
        optional :display_, String, api_name: :display

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!method initialize(display_: nil, first_name: nil, last_name: nil)
        #   @param display_ [String]
        #   @param first_name [String]
        #   @param last_name [String]
      end

      class PlayerTeam < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute team_id
        #
        #   @return [String, nil]
        optional :team_id, String, api_name: :teamID

        # @!method initialize(team_id: nil)
        #   @param team_id [String]
      end
    end
  end
end
