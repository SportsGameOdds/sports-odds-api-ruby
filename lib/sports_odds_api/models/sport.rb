# frozen_string_literal: true

module SportsOddsAPI
  module Models
    class Sport < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute background_image
      #
      #   @return [String, nil]
      optional :background_image, String, api_name: :backgroundImage

      # @!attribute base_periods
      #
      #   @return [Array<String>, nil]
      optional :base_periods, SportsOddsAPI::Internal::Type::ArrayOf[String], api_name: :basePeriods

      # @!attribute clock_type
      #
      #   @return [String, nil]
      optional :clock_type, String, api_name: :clockType

      # @!attribute default_popularity_score
      #
      #   @return [Float, nil]
      optional :default_popularity_score, Float, api_name: :defaultPopularityScore

      # @!attribute enabled
      #
      #   @return [Boolean, nil]
      optional :enabled, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute event_word
      #
      #   @return [SportsOddsAPI::Models::Sport::EventWord, nil]
      optional :event_word, -> { SportsOddsAPI::Sport::EventWord }, api_name: :eventWord

      # @!attribute extra_periods
      #
      #   @return [Array<String>, nil]
      optional :extra_periods, SportsOddsAPI::Internal::Type::ArrayOf[String], api_name: :extraPeriods

      # @!attribute has_meaningful_home_away
      #
      #   @return [Boolean, nil]
      optional :has_meaningful_home_away,
               SportsOddsAPI::Internal::Type::Boolean,
               api_name: :hasMeaningfulHomeAway

      # @!attribute image_icon
      #
      #   @return [String, nil]
      optional :image_icon, String, api_name: :imageIcon

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute point_word
      #
      #   @return [SportsOddsAPI::Models::Sport::PointWord, nil]
      optional :point_word, -> { SportsOddsAPI::Sport::PointWord }, api_name: :pointWord

      # @!attribute short_name
      #
      #   @return [String, nil]
      optional :short_name, String, api_name: :shortName

      # @!attribute sport_id
      #
      #   @return [String, nil]
      optional :sport_id, String, api_name: :sportID

      # @!attribute square_image
      #
      #   @return [String, nil]
      optional :square_image, String, api_name: :squareImage

      # @!method initialize(background_image: nil, base_periods: nil, clock_type: nil, default_popularity_score: nil, enabled: nil, event_word: nil, extra_periods: nil, has_meaningful_home_away: nil, image_icon: nil, name: nil, point_word: nil, short_name: nil, sport_id: nil, square_image: nil)
      #   @param background_image [String]
      #   @param base_periods [Array<String>]
      #   @param clock_type [String]
      #   @param default_popularity_score [Float]
      #   @param enabled [Boolean]
      #   @param event_word [SportsOddsAPI::Models::Sport::EventWord]
      #   @param extra_periods [Array<String>]
      #   @param has_meaningful_home_away [Boolean]
      #   @param image_icon [String]
      #   @param name [String]
      #   @param point_word [SportsOddsAPI::Models::Sport::PointWord]
      #   @param short_name [String]
      #   @param sport_id [String]
      #   @param square_image [String]

      # @see SportsOddsAPI::Models::Sport#event_word
      class EventWord < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute long
        #
        #   @return [SportsOddsAPI::Models::Sport::EventWord::Long, nil]
        optional :long, -> { SportsOddsAPI::Sport::EventWord::Long }

        # @!attribute short
        #
        #   @return [SportsOddsAPI::Models::Sport::EventWord::Short, nil]
        optional :short, -> { SportsOddsAPI::Sport::EventWord::Short }

        # @!method initialize(long: nil, short: nil)
        #   @param long [SportsOddsAPI::Models::Sport::EventWord::Long]
        #   @param short [SportsOddsAPI::Models::Sport::EventWord::Short]

        # @see SportsOddsAPI::Models::Sport::EventWord#long
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

        # @see SportsOddsAPI::Models::Sport::EventWord#short
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

      # @see SportsOddsAPI::Models::Sport#point_word
      class PointWord < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute long
        #
        #   @return [SportsOddsAPI::Models::Sport::PointWord::Long, nil]
        optional :long, -> { SportsOddsAPI::Sport::PointWord::Long }

        # @!attribute short
        #
        #   @return [SportsOddsAPI::Models::Sport::PointWord::Short, nil]
        optional :short, -> { SportsOddsAPI::Sport::PointWord::Short }

        # @!method initialize(long: nil, short: nil)
        #   @param long [SportsOddsAPI::Models::Sport::PointWord::Long]
        #   @param short [SportsOddsAPI::Models::Sport::PointWord::Short]

        # @see SportsOddsAPI::Models::Sport::PointWord#long
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

        # @see SportsOddsAPI::Models::Sport::PointWord#short
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
