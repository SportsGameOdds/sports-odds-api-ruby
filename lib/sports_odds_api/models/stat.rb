# frozen_string_literal: true

module SportsOddsAPI
  module Models
    class Stat < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute displays
      #
      #   @return [SportsOddsAPI::Models::Stat::Displays, nil]
      optional :displays, -> { SportsOddsAPI::Stat::Displays }

      # @!attribute is_score_stat
      #
      #   @return [Boolean, nil]
      optional :is_score_stat, SportsOddsAPI::Internal::Type::Boolean, api_name: :isScoreStat

      # @!attribute stat_id
      #
      #   @return [String, nil]
      optional :stat_id, String, api_name: :statID

      # @!attribute supported_levels
      #
      #   @return [SportsOddsAPI::Models::Stat::SupportedLevels, nil]
      optional :supported_levels, -> { SportsOddsAPI::Stat::SupportedLevels }, api_name: :supportedLevels

      # @!attribute supported_sports
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :supported_sports,
               SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Internal::Type::Unknown],
               api_name: :supportedSports

      # @!attribute units
      #
      #   @return [SportsOddsAPI::Models::Stat::Units, nil]
      optional :units, -> { SportsOddsAPI::Stat::Units }

      # @!method initialize(description: nil, displays: nil, is_score_stat: nil, stat_id: nil, supported_levels: nil, supported_sports: nil, units: nil)
      #   @param description [String]
      #   @param displays [SportsOddsAPI::Models::Stat::Displays]
      #   @param is_score_stat [Boolean]
      #   @param stat_id [String]
      #   @param supported_levels [SportsOddsAPI::Models::Stat::SupportedLevels]
      #   @param supported_sports [Hash{Symbol=>Object}]
      #   @param units [SportsOddsAPI::Models::Stat::Units]

      # @see SportsOddsAPI::Models::Stat#displays
      class Displays < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute long
        #
        #   @return [String, nil]
        optional :long, String

        # @!attribute short
        #
        #   @return [String, nil]
        optional :short, String

        # @!method initialize(long: nil, short: nil)
        #   @param long [String]
        #   @param short [String]
      end

      # @see SportsOddsAPI::Models::Stat#supported_levels
      class SupportedLevels < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute all
        #
        #   @return [Boolean, nil]
        optional :all, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute player
        #
        #   @return [Boolean, nil]
        optional :player, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute team
        #
        #   @return [Boolean, nil]
        optional :team, SportsOddsAPI::Internal::Type::Boolean

        # @!method initialize(all: nil, player: nil, team: nil)
        #   @param all [Boolean]
        #   @param player [Boolean]
        #   @param team [Boolean]
      end

      # @see SportsOddsAPI::Models::Stat#units
      class Units < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute long
        #
        #   @return [SportsOddsAPI::Models::Stat::Units::Long, nil]
        optional :long, -> { SportsOddsAPI::Stat::Units::Long }

        # @!attribute short
        #
        #   @return [SportsOddsAPI::Models::Stat::Units::Short, nil]
        optional :short, -> { SportsOddsAPI::Stat::Units::Short }

        # @!method initialize(long: nil, short: nil)
        #   @param long [SportsOddsAPI::Models::Stat::Units::Long]
        #   @param short [SportsOddsAPI::Models::Stat::Units::Short]

        # @see SportsOddsAPI::Models::Stat::Units#long
        class Long < SportsOddsAPI::Internal::Type::BaseModel
          # @!attribute plural
          #
          #   @return [String, nil]
          optional :plural, String

          # @!attribute singular
          #
          #   @return [String, nil]
          optional :singular, String

          # @!method initialize(plural: nil, singular: nil)
          #   @param plural [String]
          #   @param singular [String]
        end

        # @see SportsOddsAPI::Models::Stat::Units#short
        class Short < SportsOddsAPI::Internal::Type::BaseModel
          # @!attribute plural
          #
          #   @return [String, nil]
          optional :plural, String

          # @!attribute singular
          #
          #   @return [String, nil]
          optional :singular, String

          # @!method initialize(plural: nil, singular: nil)
          #   @param plural [String]
          #   @param singular [String]
        end
      end
    end
  end
end
