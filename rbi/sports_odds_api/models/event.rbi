# typed: strong

module SportsOddsAPI
  module Models
    class Event < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::Event, SportsOddsAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(SportsOddsAPI::Event::Activity)) }
      attr_reader :activity

      sig { params(activity: SportsOddsAPI::Event::Activity::OrHash).void }
      attr_writer :activity

      sig { returns(T.nilable(String)) }
      attr_reader :event_id

      sig { params(event_id: String).void }
      attr_writer :event_id

      sig { returns(T.nilable(SportsOddsAPI::Event::Info)) }
      attr_reader :info

      sig { params(info: SportsOddsAPI::Event::Info::OrHash).void }
      attr_writer :info

      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :manual

      sig { params(manual: T::Boolean).void }
      attr_writer :manual

      sig { returns(T.nilable(T::Hash[Symbol, SportsOddsAPI::Event::Odd])) }
      attr_reader :odds

      sig do
        params(odds: T::Hash[Symbol, SportsOddsAPI::Event::Odd::OrHash]).void
      end
      attr_writer :odds

      sig { returns(T.nilable(T::Hash[Symbol, SportsOddsAPI::Event::Player])) }
      attr_reader :players

      sig do
        params(
          players: T::Hash[Symbol, SportsOddsAPI::Event::Player::OrHash]
        ).void
      end
      attr_writer :players

      sig do
        returns(
          T.nilable(T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Float]]])
        )
      end
      attr_reader :results

      sig do
        params(
          results: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Float]]]
        ).void
      end
      attr_writer :results

      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      sig { returns(T.nilable(SportsOddsAPI::Event::Status)) }
      attr_reader :status

      sig { params(status: SportsOddsAPI::Event::Status::OrHash).void }
      attr_writer :status

      sig { returns(T.nilable(SportsOddsAPI::Event::Teams)) }
      attr_reader :teams

      sig { params(teams: SportsOddsAPI::Event::Teams::OrHash).void }
      attr_writer :teams

      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(
          activity: SportsOddsAPI::Event::Activity::OrHash,
          event_id: String,
          info: SportsOddsAPI::Event::Info::OrHash,
          league_id: String,
          manual: T::Boolean,
          odds: T::Hash[Symbol, SportsOddsAPI::Event::Odd::OrHash],
          players: T::Hash[Symbol, SportsOddsAPI::Event::Player::OrHash],
          results: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Float]]],
          sport_id: String,
          status: SportsOddsAPI::Event::Status::OrHash,
          teams: SportsOddsAPI::Event::Teams::OrHash,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        activity: nil,
        event_id: nil,
        info: nil,
        league_id: nil,
        manual: nil,
        odds: nil,
        players: nil,
        results: nil,
        sport_id: nil,
        status: nil,
        teams: nil,
        type: nil
      )
      end

      sig do
        override.returns(
          {
            activity: SportsOddsAPI::Event::Activity,
            event_id: String,
            info: SportsOddsAPI::Event::Info,
            league_id: String,
            manual: T::Boolean,
            odds: T::Hash[Symbol, SportsOddsAPI::Event::Odd],
            players: T::Hash[Symbol, SportsOddsAPI::Event::Player],
            results: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Float]]],
            sport_id: String,
            status: SportsOddsAPI::Event::Status,
            teams: SportsOddsAPI::Event::Teams,
            type: String
          }
        )
      end
      def to_hash
      end

      class Activity < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Event::Activity,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Float)) }
        attr_reader :count

        sig { params(count: Float).void }
        attr_writer :count

        sig { returns(T.nilable(Float)) }
        attr_reader :score

        sig { params(score: Float).void }
        attr_writer :score

        sig { params(count: Float, score: Float).returns(T.attached_class) }
        def self.new(count: nil, score: nil)
        end

        sig { override.returns({ count: Float, score: Float }) }
        def to_hash
        end
      end

      class Info < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(SportsOddsAPI::Event::Info, SportsOddsAPI::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :season_week

        sig { params(season_week: String).void }
        attr_writer :season_week

        sig { params(season_week: String).returns(T.attached_class) }
        def self.new(season_week: nil)
        end

        sig { override.returns({ season_week: String }) }
        def to_hash
        end
      end

      class Odd < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(SportsOddsAPI::Event::Odd, SportsOddsAPI::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :bet_type_id

        sig { params(bet_type_id: String).void }
        attr_writer :bet_type_id

        sig { returns(T.nilable(String)) }
        attr_reader :book_odds

        sig { params(book_odds: String).void }
        attr_writer :book_odds

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :book_odds_available

        sig { params(book_odds_available: T::Boolean).void }
        attr_writer :book_odds_available

        sig { returns(T.nilable(String)) }
        attr_reader :book_over_under

        sig { params(book_over_under: String).void }
        attr_writer :book_over_under

        sig { returns(T.nilable(String)) }
        attr_reader :book_spread

        sig { params(book_spread: String).void }
        attr_writer :book_spread

        sig do
          returns(
            T.nilable(T::Hash[Symbol, SportsOddsAPI::Event::Odd::ByBookmaker])
          )
        end
        attr_reader :by_bookmaker

        sig do
          params(
            by_bookmaker:
              T::Hash[Symbol, SportsOddsAPI::Event::Odd::ByBookmaker::OrHash]
          ).void
        end
        attr_writer :by_bookmaker

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cancelled

        sig { params(cancelled: T::Boolean).void }
        attr_writer :cancelled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :ended

        sig { params(ended: T::Boolean).void }
        attr_writer :ended

        sig { returns(T.nilable(String)) }
        attr_reader :fair_odds

        sig { params(fair_odds: String).void }
        attr_writer :fair_odds

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fair_odds_available

        sig { params(fair_odds_available: T::Boolean).void }
        attr_writer :fair_odds_available

        sig { returns(T.nilable(String)) }
        attr_reader :fair_over_under

        sig { params(fair_over_under: String).void }
        attr_writer :fair_over_under

        sig { returns(T.nilable(String)) }
        attr_reader :fair_spread

        sig { params(fair_spread: String).void }
        attr_writer :fair_spread

        sig { returns(T.nilable(String)) }
        attr_reader :market_name

        sig { params(market_name: String).void }
        attr_writer :market_name

        sig { returns(T.nilable(String)) }
        attr_reader :odd_id

        sig { params(odd_id: String).void }
        attr_writer :odd_id

        sig { returns(T.nilable(String)) }
        attr_reader :opposing_odd_id

        sig { params(opposing_odd_id: String).void }
        attr_writer :opposing_odd_id

        sig { returns(T.nilable(String)) }
        attr_reader :period_id

        sig { params(period_id: String).void }
        attr_writer :period_id

        sig { returns(T.nilable(String)) }
        attr_reader :player_id

        sig { params(player_id: String).void }
        attr_writer :player_id

        sig { returns(T.nilable(Float)) }
        attr_reader :score

        sig { params(score: Float).void }
        attr_writer :score

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :scoring_supported

        sig { params(scoring_supported: T::Boolean).void }
        attr_writer :scoring_supported

        sig { returns(T.nilable(String)) }
        attr_reader :side_id

        sig { params(side_id: String).void }
        attr_writer :side_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :started

        sig { params(started: T::Boolean).void }
        attr_writer :started

        sig { returns(T.nilable(String)) }
        attr_reader :stat_entity_id

        sig { params(stat_entity_id: String).void }
        attr_writer :stat_entity_id

        sig { returns(T.nilable(String)) }
        attr_reader :stat_id

        sig { params(stat_id: String).void }
        attr_writer :stat_id

        sig do
          params(
            bet_type_id: String,
            book_odds: String,
            book_odds_available: T::Boolean,
            book_over_under: String,
            book_spread: String,
            by_bookmaker:
              T::Hash[Symbol, SportsOddsAPI::Event::Odd::ByBookmaker::OrHash],
            cancelled: T::Boolean,
            ended: T::Boolean,
            fair_odds: String,
            fair_odds_available: T::Boolean,
            fair_over_under: String,
            fair_spread: String,
            market_name: String,
            odd_id: String,
            opposing_odd_id: String,
            period_id: String,
            player_id: String,
            score: Float,
            scoring_supported: T::Boolean,
            side_id: String,
            started: T::Boolean,
            stat_entity_id: String,
            stat_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          bet_type_id: nil,
          book_odds: nil,
          book_odds_available: nil,
          book_over_under: nil,
          book_spread: nil,
          by_bookmaker: nil,
          cancelled: nil,
          ended: nil,
          fair_odds: nil,
          fair_odds_available: nil,
          fair_over_under: nil,
          fair_spread: nil,
          market_name: nil,
          odd_id: nil,
          opposing_odd_id: nil,
          period_id: nil,
          player_id: nil,
          score: nil,
          scoring_supported: nil,
          side_id: nil,
          started: nil,
          stat_entity_id: nil,
          stat_id: nil
        )
        end

        sig do
          override.returns(
            {
              bet_type_id: String,
              book_odds: String,
              book_odds_available: T::Boolean,
              book_over_under: String,
              book_spread: String,
              by_bookmaker:
                T::Hash[Symbol, SportsOddsAPI::Event::Odd::ByBookmaker],
              cancelled: T::Boolean,
              ended: T::Boolean,
              fair_odds: String,
              fair_odds_available: T::Boolean,
              fair_over_under: String,
              fair_spread: String,
              market_name: String,
              odd_id: String,
              opposing_odd_id: String,
              period_id: String,
              player_id: String,
              score: Float,
              scoring_supported: T::Boolean,
              side_id: String,
              started: T::Boolean,
              stat_entity_id: String,
              stat_id: String
            }
          )
        end
        def to_hash
        end

        class ByBookmaker < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Event::Odd::ByBookmaker,
                SportsOddsAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :available

          sig { params(available: T::Boolean).void }
          attr_writer :available

          sig { returns(T.nilable(String)) }
          attr_reader :bookmaker_id

          sig { params(bookmaker_id: String).void }
          attr_writer :bookmaker_id

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_main_line

          sig { params(is_main_line: T::Boolean).void }
          attr_writer :is_main_line

          sig { returns(T.nilable(Time)) }
          attr_reader :last_updated_at

          sig { params(last_updated_at: Time).void }
          attr_writer :last_updated_at

          sig { returns(T.nilable(String)) }
          attr_reader :odds

          sig { params(odds: String).void }
          attr_writer :odds

          sig { returns(T.nilable(String)) }
          attr_reader :over_under

          sig { params(over_under: String).void }
          attr_writer :over_under

          sig { returns(T.nilable(String)) }
          attr_reader :spread

          sig { params(spread: String).void }
          attr_writer :spread

          sig do
            params(
              available: T::Boolean,
              bookmaker_id: String,
              is_main_line: T::Boolean,
              last_updated_at: Time,
              odds: String,
              over_under: String,
              spread: String
            ).returns(T.attached_class)
          end
          def self.new(
            available: nil,
            bookmaker_id: nil,
            is_main_line: nil,
            last_updated_at: nil,
            odds: nil,
            over_under: nil,
            spread: nil
          )
          end

          sig do
            override.returns(
              {
                available: T::Boolean,
                bookmaker_id: String,
                is_main_line: T::Boolean,
                last_updated_at: Time,
                odds: String,
                over_under: String,
                spread: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Player < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Event::Player,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :alias_

        sig { params(alias_: String).void }
        attr_writer :alias_

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :photo

        sig { params(photo: String).void }
        attr_writer :photo

        sig { returns(T.nilable(String)) }
        attr_reader :player_id

        sig { params(player_id: String).void }
        attr_writer :player_id

        sig { returns(T.nilable(String)) }
        attr_reader :team_id

        sig { params(team_id: String).void }
        attr_writer :team_id

        sig do
          params(
            alias_: String,
            first_name: String,
            last_name: String,
            name: String,
            photo: String,
            player_id: String,
            team_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          alias_: nil,
          first_name: nil,
          last_name: nil,
          name: nil,
          photo: nil,
          player_id: nil,
          team_id: nil
        )
        end

        sig do
          override.returns(
            {
              alias_: String,
              first_name: String,
              last_name: String,
              name: String,
              photo: String,
              player_id: String,
              team_id: String
            }
          )
        end
        def to_hash
        end
      end

      class Status < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Event::Status,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :cancelled

        sig { params(cancelled: T::Boolean).void }
        attr_writer :cancelled

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :completed

        sig { params(completed: T::Boolean).void }
        attr_writer :completed

        sig { returns(T.nilable(String)) }
        attr_reader :current_period_id

        sig { params(current_period_id: String).void }
        attr_writer :current_period_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :delayed

        sig { params(delayed: T::Boolean).void }
        attr_writer :delayed

        sig { returns(T.nilable(String)) }
        attr_reader :display_long

        sig { params(display_long: String).void }
        attr_writer :display_long

        sig { returns(T.nilable(String)) }
        attr_reader :display_short

        sig { params(display_short: String).void }
        attr_writer :display_short

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :ended

        sig { params(ended: T::Boolean).void }
        attr_writer :ended

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :finalized

        sig { params(finalized: T::Boolean).void }
        attr_writer :finalized

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hard_start

        sig { params(hard_start: T::Boolean).void }
        attr_writer :hard_start

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :live

        sig { params(live: T::Boolean).void }
        attr_writer :live

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :odds_available

        sig { params(odds_available: T::Boolean).void }
        attr_writer :odds_available

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :odds_present

        sig { params(odds_present: T::Boolean).void }
        attr_writer :odds_present

        sig { returns(T.nilable(SportsOddsAPI::Event::Status::Periods)) }
        attr_reader :periods

        sig do
          params(periods: SportsOddsAPI::Event::Status::Periods::OrHash).void
        end
        attr_writer :periods

        sig { returns(T.nilable(String)) }
        attr_reader :previous_period_id

        sig { params(previous_period_id: String).void }
        attr_writer :previous_period_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :re_grade

        sig { params(re_grade: T::Boolean).void }
        attr_writer :re_grade

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :started

        sig { params(started: T::Boolean).void }
        attr_writer :started

        sig { returns(T.nilable(Time)) }
        attr_reader :starts_at

        sig { params(starts_at: Time).void }
        attr_writer :starts_at

        sig do
          params(
            cancelled: T::Boolean,
            completed: T::Boolean,
            current_period_id: String,
            delayed: T::Boolean,
            display_long: String,
            display_short: String,
            ended: T::Boolean,
            finalized: T::Boolean,
            hard_start: T::Boolean,
            live: T::Boolean,
            odds_available: T::Boolean,
            odds_present: T::Boolean,
            periods: SportsOddsAPI::Event::Status::Periods::OrHash,
            previous_period_id: String,
            re_grade: T::Boolean,
            started: T::Boolean,
            starts_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          cancelled: nil,
          completed: nil,
          current_period_id: nil,
          delayed: nil,
          display_long: nil,
          display_short: nil,
          ended: nil,
          finalized: nil,
          hard_start: nil,
          live: nil,
          odds_available: nil,
          odds_present: nil,
          periods: nil,
          previous_period_id: nil,
          re_grade: nil,
          started: nil,
          starts_at: nil
        )
        end

        sig do
          override.returns(
            {
              cancelled: T::Boolean,
              completed: T::Boolean,
              current_period_id: String,
              delayed: T::Boolean,
              display_long: String,
              display_short: String,
              ended: T::Boolean,
              finalized: T::Boolean,
              hard_start: T::Boolean,
              live: T::Boolean,
              odds_available: T::Boolean,
              odds_present: T::Boolean,
              periods: SportsOddsAPI::Event::Status::Periods,
              previous_period_id: String,
              re_grade: T::Boolean,
              started: T::Boolean,
              starts_at: Time
            }
          )
        end
        def to_hash
        end

        class Periods < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Event::Status::Periods,
                SportsOddsAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :ended

          sig { params(ended: T::Array[String]).void }
          attr_writer :ended

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :started

          sig { params(started: T::Array[String]).void }
          attr_writer :started

          sig do
            params(ended: T::Array[String], started: T::Array[String]).returns(
              T.attached_class
            )
          end
          def self.new(ended: nil, started: nil)
          end

          sig do
            override.returns(
              { ended: T::Array[String], started: T::Array[String] }
            )
          end
          def to_hash
          end
        end
      end

      class Teams < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(SportsOddsAPI::Event::Teams, SportsOddsAPI::Internal::AnyHash)
          end

        sig { returns(T.nilable(SportsOddsAPI::Event::Teams::Away)) }
        attr_reader :away

        sig { params(away: SportsOddsAPI::Event::Teams::Away::OrHash).void }
        attr_writer :away

        sig { returns(T.nilable(SportsOddsAPI::Event::Teams::Home)) }
        attr_reader :home

        sig { params(home: SportsOddsAPI::Event::Teams::Home::OrHash).void }
        attr_writer :home

        sig do
          params(
            away: SportsOddsAPI::Event::Teams::Away::OrHash,
            home: SportsOddsAPI::Event::Teams::Home::OrHash
          ).returns(T.attached_class)
        end
        def self.new(away: nil, home: nil)
        end

        sig do
          override.returns(
            {
              away: SportsOddsAPI::Event::Teams::Away,
              home: SportsOddsAPI::Event::Teams::Home
            }
          )
        end
        def to_hash
        end

        class Away < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Event::Teams::Away,
                SportsOddsAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(SportsOddsAPI::Event::Teams::Away::Colors)) }
          attr_reader :colors

          sig do
            params(
              colors: SportsOddsAPI::Event::Teams::Away::Colors::OrHash
            ).void
          end
          attr_writer :colors

          sig { returns(T.nilable(String)) }
          attr_reader :logo

          sig { params(logo: String).void }
          attr_writer :logo

          sig { returns(T.nilable(SportsOddsAPI::Event::Teams::Away::Names)) }
          attr_reader :names

          sig do
            params(names: SportsOddsAPI::Event::Teams::Away::Names::OrHash).void
          end
          attr_writer :names

          sig { returns(T.nilable(Float)) }
          attr_reader :score

          sig { params(score: Float).void }
          attr_writer :score

          sig { returns(T.nilable(String)) }
          attr_reader :stat_entity_id

          sig { params(stat_entity_id: String).void }
          attr_writer :stat_entity_id

          sig { returns(T.nilable(String)) }
          attr_reader :team_id

          sig { params(team_id: String).void }
          attr_writer :team_id

          sig do
            params(
              colors: SportsOddsAPI::Event::Teams::Away::Colors::OrHash,
              logo: String,
              names: SportsOddsAPI::Event::Teams::Away::Names::OrHash,
              score: Float,
              stat_entity_id: String,
              team_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            colors: nil,
            logo: nil,
            names: nil,
            score: nil,
            stat_entity_id: nil,
            team_id: nil
          )
          end

          sig do
            override.returns(
              {
                colors: SportsOddsAPI::Event::Teams::Away::Colors,
                logo: String,
                names: SportsOddsAPI::Event::Teams::Away::Names,
                score: Float,
                stat_entity_id: String,
                team_id: String
              }
            )
          end
          def to_hash
          end

          class Colors < SportsOddsAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  SportsOddsAPI::Event::Teams::Away::Colors,
                  SportsOddsAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :primary

            sig { params(primary: String).void }
            attr_writer :primary

            sig { returns(T.nilable(String)) }
            attr_reader :primary_contrast

            sig { params(primary_contrast: String).void }
            attr_writer :primary_contrast

            sig { returns(T.nilable(String)) }
            attr_reader :secondary

            sig { params(secondary: String).void }
            attr_writer :secondary

            sig { returns(T.nilable(String)) }
            attr_reader :secondary_contrast

            sig { params(secondary_contrast: String).void }
            attr_writer :secondary_contrast

            sig do
              params(
                primary: String,
                primary_contrast: String,
                secondary: String,
                secondary_contrast: String
              ).returns(T.attached_class)
            end
            def self.new(
              primary: nil,
              primary_contrast: nil,
              secondary: nil,
              secondary_contrast: nil
            )
            end

            sig do
              override.returns(
                {
                  primary: String,
                  primary_contrast: String,
                  secondary: String,
                  secondary_contrast: String
                }
              )
            end
            def to_hash
            end
          end

          class Names < SportsOddsAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  SportsOddsAPI::Event::Teams::Away::Names,
                  SportsOddsAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :long

            sig { params(long: String).void }
            attr_writer :long

            sig { returns(T.nilable(String)) }
            attr_reader :medium

            sig { params(medium: String).void }
            attr_writer :medium

            sig { returns(T.nilable(String)) }
            attr_reader :short

            sig { params(short: String).void }
            attr_writer :short

            sig do
              params(long: String, medium: String, short: String).returns(
                T.attached_class
              )
            end
            def self.new(long: nil, medium: nil, short: nil)
            end

            sig do
              override.returns({ long: String, medium: String, short: String })
            end
            def to_hash
            end
          end
        end

        class Home < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Event::Teams::Home,
                SportsOddsAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(SportsOddsAPI::Event::Teams::Home::Colors)) }
          attr_reader :colors

          sig do
            params(
              colors: SportsOddsAPI::Event::Teams::Home::Colors::OrHash
            ).void
          end
          attr_writer :colors

          sig { returns(T.nilable(String)) }
          attr_reader :logo

          sig { params(logo: String).void }
          attr_writer :logo

          sig { returns(T.nilable(SportsOddsAPI::Event::Teams::Home::Names)) }
          attr_reader :names

          sig do
            params(names: SportsOddsAPI::Event::Teams::Home::Names::OrHash).void
          end
          attr_writer :names

          sig { returns(T.nilable(Float)) }
          attr_reader :score

          sig { params(score: Float).void }
          attr_writer :score

          sig { returns(T.nilable(String)) }
          attr_reader :stat_entity_id

          sig { params(stat_entity_id: String).void }
          attr_writer :stat_entity_id

          sig { returns(T.nilable(String)) }
          attr_reader :team_id

          sig { params(team_id: String).void }
          attr_writer :team_id

          sig do
            params(
              colors: SportsOddsAPI::Event::Teams::Home::Colors::OrHash,
              logo: String,
              names: SportsOddsAPI::Event::Teams::Home::Names::OrHash,
              score: Float,
              stat_entity_id: String,
              team_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            colors: nil,
            logo: nil,
            names: nil,
            score: nil,
            stat_entity_id: nil,
            team_id: nil
          )
          end

          sig do
            override.returns(
              {
                colors: SportsOddsAPI::Event::Teams::Home::Colors,
                logo: String,
                names: SportsOddsAPI::Event::Teams::Home::Names,
                score: Float,
                stat_entity_id: String,
                team_id: String
              }
            )
          end
          def to_hash
          end

          class Colors < SportsOddsAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  SportsOddsAPI::Event::Teams::Home::Colors,
                  SportsOddsAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :primary

            sig { params(primary: String).void }
            attr_writer :primary

            sig { returns(T.nilable(String)) }
            attr_reader :primary_contrast

            sig { params(primary_contrast: String).void }
            attr_writer :primary_contrast

            sig { returns(T.nilable(String)) }
            attr_reader :secondary

            sig { params(secondary: String).void }
            attr_writer :secondary

            sig { returns(T.nilable(String)) }
            attr_reader :secondary_contrast

            sig { params(secondary_contrast: String).void }
            attr_writer :secondary_contrast

            sig do
              params(
                primary: String,
                primary_contrast: String,
                secondary: String,
                secondary_contrast: String
              ).returns(T.attached_class)
            end
            def self.new(
              primary: nil,
              primary_contrast: nil,
              secondary: nil,
              secondary_contrast: nil
            )
            end

            sig do
              override.returns(
                {
                  primary: String,
                  primary_contrast: String,
                  secondary: String,
                  secondary_contrast: String
                }
              )
            end
            def to_hash
            end
          end

          class Names < SportsOddsAPI::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  SportsOddsAPI::Event::Teams::Home::Names,
                  SportsOddsAPI::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :long

            sig { params(long: String).void }
            attr_writer :long

            sig { returns(T.nilable(String)) }
            attr_reader :medium

            sig { params(medium: String).void }
            attr_writer :medium

            sig { returns(T.nilable(String)) }
            attr_reader :short

            sig { params(short: String).void }
            attr_writer :short

            sig do
              params(long: String, medium: String, short: String).returns(
                T.attached_class
              )
            end
            def self.new(long: nil, medium: nil, short: nil)
            end

            sig do
              override.returns({ long: String, medium: String, short: String })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
