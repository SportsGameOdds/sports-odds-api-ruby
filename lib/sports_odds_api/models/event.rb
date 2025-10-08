# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Events#get
    class Event < SportsOddsAPI::Internal::Type::BaseModel
      # @!attribute activity
      #
      #   @return [SportsOddsAPI::Models::Event::Activity, nil]
      optional :activity, -> { SportsOddsAPI::Event::Activity }

      # @!attribute event_id
      #
      #   @return [String, nil]
      optional :event_id, String, api_name: :eventID

      # @!attribute info
      #
      #   @return [SportsOddsAPI::Models::Event::Info, nil]
      optional :info, -> { SportsOddsAPI::Event::Info }

      # @!attribute league_id
      #
      #   @return [String, nil]
      optional :league_id, String, api_name: :leagueID

      # @!attribute manual
      #
      #   @return [Boolean, nil]
      optional :manual, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute odds
      #
      #   @return [Hash{Symbol=>SportsOddsAPI::Models::Event::Odd}, nil]
      optional :odds, -> { SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Event::Odd] }

      # @!attribute players
      #
      #   @return [Hash{Symbol=>SportsOddsAPI::Models::Event::Player}, nil]
      optional :players, -> { SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Event::Player] }

      # @!attribute results
      #
      #   @return [Hash{Symbol=>Hash{Symbol=>Hash{Symbol=>Float}}}, nil]
      optional :results,
               SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Internal::Type::HashOf[Float]]]

      # @!attribute sport_id
      #
      #   @return [String, nil]
      optional :sport_id, String, api_name: :sportID

      # @!attribute status
      #
      #   @return [SportsOddsAPI::Models::Event::Status, nil]
      optional :status, -> { SportsOddsAPI::Event::Status }

      # @!attribute teams
      #
      #   @return [SportsOddsAPI::Models::Event::Teams, nil]
      optional :teams, -> { SportsOddsAPI::Event::Teams }

      # @!attribute type
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(activity: nil, event_id: nil, info: nil, league_id: nil, manual: nil, odds: nil, players: nil, results: nil, sport_id: nil, status: nil, teams: nil, type: nil)
      #   @param activity [SportsOddsAPI::Models::Event::Activity]
      #   @param event_id [String]
      #   @param info [SportsOddsAPI::Models::Event::Info]
      #   @param league_id [String]
      #   @param manual [Boolean]
      #   @param odds [Hash{Symbol=>SportsOddsAPI::Models::Event::Odd}]
      #   @param players [Hash{Symbol=>SportsOddsAPI::Models::Event::Player}]
      #   @param results [Hash{Symbol=>Hash{Symbol=>Hash{Symbol=>Float}}}]
      #   @param sport_id [String]
      #   @param status [SportsOddsAPI::Models::Event::Status]
      #   @param teams [SportsOddsAPI::Models::Event::Teams]
      #   @param type [String]

      # @see SportsOddsAPI::Models::Event#activity
      class Activity < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute count
        #
        #   @return [Float, nil]
        optional :count, Float

        # @!attribute score
        #
        #   @return [Float, nil]
        optional :score, Float

        # @!method initialize(count: nil, score: nil)
        #   @param count [Float]
        #   @param score [Float]
      end

      # @see SportsOddsAPI::Models::Event#info
      class Info < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute season_week
        #
        #   @return [String, nil]
        optional :season_week, String, api_name: :seasonWeek

        # @!method initialize(season_week: nil)
        #   @param season_week [String]
      end

      class Odd < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute bet_type_id
        #
        #   @return [String, nil]
        optional :bet_type_id, String, api_name: :betTypeID

        # @!attribute book_odds
        #
        #   @return [String, nil]
        optional :book_odds, String, api_name: :bookOdds

        # @!attribute book_odds_available
        #
        #   @return [Boolean, nil]
        optional :book_odds_available, SportsOddsAPI::Internal::Type::Boolean, api_name: :bookOddsAvailable

        # @!attribute book_over_under
        #
        #   @return [String, nil]
        optional :book_over_under, String, api_name: :bookOverUnder

        # @!attribute book_spread
        #
        #   @return [String, nil]
        optional :book_spread, String, api_name: :bookSpread

        # @!attribute by_bookmaker
        #
        #   @return [Hash{Symbol=>SportsOddsAPI::Models::Event::Odd::ByBookmaker}, nil]
        optional :by_bookmaker,
                 -> { SportsOddsAPI::Internal::Type::HashOf[SportsOddsAPI::Event::Odd::ByBookmaker] },
                 api_name: :byBookmaker

        # @!attribute cancelled
        #
        #   @return [Boolean, nil]
        optional :cancelled, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute ended
        #
        #   @return [Boolean, nil]
        optional :ended, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute fair_odds
        #
        #   @return [String, nil]
        optional :fair_odds, String, api_name: :fairOdds

        # @!attribute fair_odds_available
        #
        #   @return [Boolean, nil]
        optional :fair_odds_available, SportsOddsAPI::Internal::Type::Boolean, api_name: :fairOddsAvailable

        # @!attribute fair_over_under
        #
        #   @return [String, nil]
        optional :fair_over_under, String, api_name: :fairOverUnder

        # @!attribute fair_spread
        #
        #   @return [String, nil]
        optional :fair_spread, String, api_name: :fairSpread

        # @!attribute market_name
        #
        #   @return [String, nil]
        optional :market_name, String, api_name: :marketName

        # @!attribute odd_id
        #
        #   @return [String, nil]
        optional :odd_id, String, api_name: :oddID

        # @!attribute opposing_odd_id
        #
        #   @return [String, nil]
        optional :opposing_odd_id, String, api_name: :opposingOddID

        # @!attribute period_id
        #
        #   @return [String, nil]
        optional :period_id, String, api_name: :periodID

        # @!attribute player_id
        #
        #   @return [String, nil]
        optional :player_id, String, api_name: :playerID

        # @!attribute score
        #
        #   @return [Float, nil]
        optional :score, Float

        # @!attribute scoring_supported
        #
        #   @return [Boolean, nil]
        optional :scoring_supported, SportsOddsAPI::Internal::Type::Boolean, api_name: :scoringSupported

        # @!attribute side_id
        #
        #   @return [String, nil]
        optional :side_id, String, api_name: :sideID

        # @!attribute started
        #
        #   @return [Boolean, nil]
        optional :started, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute stat_entity_id
        #
        #   @return [String, nil]
        optional :stat_entity_id, String, api_name: :statEntityID

        # @!attribute stat_id
        #
        #   @return [String, nil]
        optional :stat_id, String, api_name: :statID

        # @!method initialize(bet_type_id: nil, book_odds: nil, book_odds_available: nil, book_over_under: nil, book_spread: nil, by_bookmaker: nil, cancelled: nil, ended: nil, fair_odds: nil, fair_odds_available: nil, fair_over_under: nil, fair_spread: nil, market_name: nil, odd_id: nil, opposing_odd_id: nil, period_id: nil, player_id: nil, score: nil, scoring_supported: nil, side_id: nil, started: nil, stat_entity_id: nil, stat_id: nil)
        #   @param bet_type_id [String]
        #   @param book_odds [String]
        #   @param book_odds_available [Boolean]
        #   @param book_over_under [String]
        #   @param book_spread [String]
        #   @param by_bookmaker [Hash{Symbol=>SportsOddsAPI::Models::Event::Odd::ByBookmaker}]
        #   @param cancelled [Boolean]
        #   @param ended [Boolean]
        #   @param fair_odds [String]
        #   @param fair_odds_available [Boolean]
        #   @param fair_over_under [String]
        #   @param fair_spread [String]
        #   @param market_name [String]
        #   @param odd_id [String]
        #   @param opposing_odd_id [String]
        #   @param period_id [String]
        #   @param player_id [String]
        #   @param score [Float]
        #   @param scoring_supported [Boolean]
        #   @param side_id [String]
        #   @param started [Boolean]
        #   @param stat_entity_id [String]
        #   @param stat_id [String]

        class ByBookmaker < SportsOddsAPI::Internal::Type::BaseModel
          # @!attribute available
          #
          #   @return [Boolean, nil]
          optional :available, SportsOddsAPI::Internal::Type::Boolean

          # @!attribute bookmaker_id
          #
          #   @return [String, nil]
          optional :bookmaker_id, String, api_name: :bookmakerID

          # @!attribute is_main_line
          #
          #   @return [Boolean, nil]
          optional :is_main_line, SportsOddsAPI::Internal::Type::Boolean, api_name: :isMainLine

          # @!attribute last_updated_at
          #
          #   @return [Time, nil]
          optional :last_updated_at, Time, api_name: :lastUpdatedAt

          # @!attribute odds
          #
          #   @return [String, nil]
          optional :odds, String

          # @!attribute over_under
          #
          #   @return [String, nil]
          optional :over_under, String, api_name: :overUnder

          # @!attribute spread
          #
          #   @return [String, nil]
          optional :spread, String

          # @!method initialize(available: nil, bookmaker_id: nil, is_main_line: nil, last_updated_at: nil, odds: nil, over_under: nil, spread: nil)
          #   @param available [Boolean]
          #   @param bookmaker_id [String]
          #   @param is_main_line [Boolean]
          #   @param last_updated_at [Time]
          #   @param odds [String]
          #   @param over_under [String]
          #   @param spread [String]
        end
      end

      class Player < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute alias_
        #
        #   @return [String, nil]
        optional :alias_, String, api_name: :alias

        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute photo
        #
        #   @return [String, nil]
        optional :photo, String

        # @!attribute player_id
        #
        #   @return [String, nil]
        optional :player_id, String, api_name: :playerID

        # @!attribute team_id
        #
        #   @return [String, nil]
        optional :team_id, String, api_name: :teamID

        # @!method initialize(alias_: nil, first_name: nil, last_name: nil, name: nil, photo: nil, player_id: nil, team_id: nil)
        #   @param alias_ [String]
        #   @param first_name [String]
        #   @param last_name [String]
        #   @param name [String]
        #   @param photo [String]
        #   @param player_id [String]
        #   @param team_id [String]
      end

      # @see SportsOddsAPI::Models::Event#status
      class Status < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute cancelled
        #
        #   @return [Boolean, nil]
        optional :cancelled, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute completed
        #
        #   @return [Boolean, nil]
        optional :completed, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute current_period_id
        #
        #   @return [String, nil]
        optional :current_period_id, String, api_name: :currentPeriodID

        # @!attribute delayed
        #
        #   @return [Boolean, nil]
        optional :delayed, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute display_long
        #
        #   @return [String, nil]
        optional :display_long, String, api_name: :displayLong

        # @!attribute display_short
        #
        #   @return [String, nil]
        optional :display_short, String, api_name: :displayShort

        # @!attribute ended
        #
        #   @return [Boolean, nil]
        optional :ended, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute finalized
        #
        #   @return [Boolean, nil]
        optional :finalized, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute hard_start
        #
        #   @return [Boolean, nil]
        optional :hard_start, SportsOddsAPI::Internal::Type::Boolean, api_name: :hardStart

        # @!attribute live
        #
        #   @return [Boolean, nil]
        optional :live, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute odds_available
        #
        #   @return [Boolean, nil]
        optional :odds_available, SportsOddsAPI::Internal::Type::Boolean, api_name: :oddsAvailable

        # @!attribute odds_present
        #
        #   @return [Boolean, nil]
        optional :odds_present, SportsOddsAPI::Internal::Type::Boolean, api_name: :oddsPresent

        # @!attribute periods
        #
        #   @return [SportsOddsAPI::Models::Event::Status::Periods, nil]
        optional :periods, -> { SportsOddsAPI::Event::Status::Periods }

        # @!attribute previous_period_id
        #
        #   @return [String, nil]
        optional :previous_period_id, String, api_name: :previousPeriodID

        # @!attribute re_grade
        #
        #   @return [Boolean, nil]
        optional :re_grade, SportsOddsAPI::Internal::Type::Boolean, api_name: :reGrade

        # @!attribute started
        #
        #   @return [Boolean, nil]
        optional :started, SportsOddsAPI::Internal::Type::Boolean

        # @!attribute starts_at
        #
        #   @return [Time, nil]
        optional :starts_at, Time, api_name: :startsAt

        # @!method initialize(cancelled: nil, completed: nil, current_period_id: nil, delayed: nil, display_long: nil, display_short: nil, ended: nil, finalized: nil, hard_start: nil, live: nil, odds_available: nil, odds_present: nil, periods: nil, previous_period_id: nil, re_grade: nil, started: nil, starts_at: nil)
        #   @param cancelled [Boolean]
        #   @param completed [Boolean]
        #   @param current_period_id [String]
        #   @param delayed [Boolean]
        #   @param display_long [String]
        #   @param display_short [String]
        #   @param ended [Boolean]
        #   @param finalized [Boolean]
        #   @param hard_start [Boolean]
        #   @param live [Boolean]
        #   @param odds_available [Boolean]
        #   @param odds_present [Boolean]
        #   @param periods [SportsOddsAPI::Models::Event::Status::Periods]
        #   @param previous_period_id [String]
        #   @param re_grade [Boolean]
        #   @param started [Boolean]
        #   @param starts_at [Time]

        # @see SportsOddsAPI::Models::Event::Status#periods
        class Periods < SportsOddsAPI::Internal::Type::BaseModel
          # @!attribute ended
          #
          #   @return [Array<String>, nil]
          optional :ended, SportsOddsAPI::Internal::Type::ArrayOf[String]

          # @!attribute started
          #
          #   @return [Array<String>, nil]
          optional :started, SportsOddsAPI::Internal::Type::ArrayOf[String]

          # @!method initialize(ended: nil, started: nil)
          #   @param ended [Array<String>]
          #   @param started [Array<String>]
        end
      end

      # @see SportsOddsAPI::Models::Event#teams
      class Teams < SportsOddsAPI::Internal::Type::BaseModel
        # @!attribute away
        #
        #   @return [SportsOddsAPI::Models::Event::Teams::Away, nil]
        optional :away, -> { SportsOddsAPI::Event::Teams::Away }

        # @!attribute home
        #
        #   @return [SportsOddsAPI::Models::Event::Teams::Home, nil]
        optional :home, -> { SportsOddsAPI::Event::Teams::Home }

        # @!method initialize(away: nil, home: nil)
        #   @param away [SportsOddsAPI::Models::Event::Teams::Away]
        #   @param home [SportsOddsAPI::Models::Event::Teams::Home]

        # @see SportsOddsAPI::Models::Event::Teams#away
        class Away < SportsOddsAPI::Internal::Type::BaseModel
          # @!attribute colors
          #
          #   @return [SportsOddsAPI::Models::Event::Teams::Away::Colors, nil]
          optional :colors, -> { SportsOddsAPI::Event::Teams::Away::Colors }

          # @!attribute logo
          #
          #   @return [String, nil]
          optional :logo, String

          # @!attribute names
          #
          #   @return [SportsOddsAPI::Models::Event::Teams::Away::Names, nil]
          optional :names, -> { SportsOddsAPI::Event::Teams::Away::Names }

          # @!attribute score
          #
          #   @return [Float, nil]
          optional :score, Float

          # @!attribute stat_entity_id
          #
          #   @return [String, nil]
          optional :stat_entity_id, String, api_name: :statEntityID

          # @!attribute team_id
          #
          #   @return [String, nil]
          optional :team_id, String, api_name: :teamID

          # @!method initialize(colors: nil, logo: nil, names: nil, score: nil, stat_entity_id: nil, team_id: nil)
          #   @param colors [SportsOddsAPI::Models::Event::Teams::Away::Colors]
          #   @param logo [String]
          #   @param names [SportsOddsAPI::Models::Event::Teams::Away::Names]
          #   @param score [Float]
          #   @param stat_entity_id [String]
          #   @param team_id [String]

          # @see SportsOddsAPI::Models::Event::Teams::Away#colors
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

          # @see SportsOddsAPI::Models::Event::Teams::Away#names
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
        end

        # @see SportsOddsAPI::Models::Event::Teams#home
        class Home < SportsOddsAPI::Internal::Type::BaseModel
          # @!attribute colors
          #
          #   @return [SportsOddsAPI::Models::Event::Teams::Home::Colors, nil]
          optional :colors, -> { SportsOddsAPI::Event::Teams::Home::Colors }

          # @!attribute logo
          #
          #   @return [String, nil]
          optional :logo, String

          # @!attribute names
          #
          #   @return [SportsOddsAPI::Models::Event::Teams::Home::Names, nil]
          optional :names, -> { SportsOddsAPI::Event::Teams::Home::Names }

          # @!attribute score
          #
          #   @return [Float, nil]
          optional :score, Float

          # @!attribute stat_entity_id
          #
          #   @return [String, nil]
          optional :stat_entity_id, String, api_name: :statEntityID

          # @!attribute team_id
          #
          #   @return [String, nil]
          optional :team_id, String, api_name: :teamID

          # @!method initialize(colors: nil, logo: nil, names: nil, score: nil, stat_entity_id: nil, team_id: nil)
          #   @param colors [SportsOddsAPI::Models::Event::Teams::Home::Colors]
          #   @param logo [String]
          #   @param names [SportsOddsAPI::Models::Event::Teams::Home::Names]
          #   @param score [Float]
          #   @param stat_entity_id [String]
          #   @param team_id [String]

          # @see SportsOddsAPI::Models::Event::Teams::Home#colors
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

          # @see SportsOddsAPI::Models::Event::Teams::Home#names
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
        end
      end
    end
  end
end
