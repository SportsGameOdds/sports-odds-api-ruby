# typed: strong

module SportsOddsAPI
  module Models
    class Team < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::Team, SportsOddsAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(SportsOddsAPI::Team::Colors)) }
      attr_reader :colors

      sig { params(colors: SportsOddsAPI::Team::Colors::OrHash).void }
      attr_writer :colors

      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      sig { returns(T.nilable(String)) }
      attr_reader :logo

      sig { params(logo: String).void }
      attr_writer :logo

      sig { returns(T.nilable(SportsOddsAPI::Team::Lookups)) }
      attr_reader :lookups

      sig { params(lookups: SportsOddsAPI::Team::Lookups::OrHash).void }
      attr_writer :lookups

      sig { returns(T.nilable(SportsOddsAPI::Team::Names)) }
      attr_reader :names

      sig { params(names: SportsOddsAPI::Team::Names::OrHash).void }
      attr_writer :names

      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      sig { returns(T.nilable(SportsOddsAPI::Team::Standings)) }
      attr_reader :standings

      sig { params(standings: SportsOddsAPI::Team::Standings::OrHash).void }
      attr_writer :standings

      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      sig do
        params(
          colors: SportsOddsAPI::Team::Colors::OrHash,
          league_id: String,
          logo: String,
          lookups: SportsOddsAPI::Team::Lookups::OrHash,
          names: SportsOddsAPI::Team::Names::OrHash,
          sport_id: String,
          standings: SportsOddsAPI::Team::Standings::OrHash,
          team_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        colors: nil,
        league_id: nil,
        logo: nil,
        lookups: nil,
        names: nil,
        sport_id: nil,
        standings: nil,
        team_id: nil
      )
      end

      sig do
        override.returns(
          {
            colors: SportsOddsAPI::Team::Colors,
            league_id: String,
            logo: String,
            lookups: SportsOddsAPI::Team::Lookups,
            names: SportsOddsAPI::Team::Names,
            sport_id: String,
            standings: SportsOddsAPI::Team::Standings,
            team_id: String
          }
        )
      end
      def to_hash
      end

      class Colors < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(SportsOddsAPI::Team::Colors, SportsOddsAPI::Internal::AnyHash)
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

      class Lookups < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Team::Lookups,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :team_name

        sig { params(team_name: T::Array[String]).void }
        attr_writer :team_name

        sig { params(team_name: T::Array[String]).returns(T.attached_class) }
        def self.new(team_name: nil)
        end

        sig { override.returns({ team_name: T::Array[String] }) }
        def to_hash
        end
      end

      class Names < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(SportsOddsAPI::Team::Names, SportsOddsAPI::Internal::AnyHash)
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

      class Standings < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Team::Standings,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Float)) }
        attr_reader :losses

        sig { params(losses: Float).void }
        attr_writer :losses

        sig { returns(T.nilable(Float)) }
        attr_reader :played

        sig { params(played: Float).void }
        attr_writer :played

        sig { returns(T.nilable(String)) }
        attr_reader :position

        sig { params(position: String).void }
        attr_writer :position

        sig { returns(T.nilable(String)) }
        attr_reader :record

        sig { params(record: String).void }
        attr_writer :record

        sig { returns(T.nilable(Float)) }
        attr_reader :ties

        sig { params(ties: Float).void }
        attr_writer :ties

        sig { returns(T.nilable(Float)) }
        attr_reader :wins

        sig { params(wins: Float).void }
        attr_writer :wins

        sig do
          params(
            losses: Float,
            played: Float,
            position: String,
            record: String,
            ties: Float,
            wins: Float
          ).returns(T.attached_class)
        end
        def self.new(
          losses: nil,
          played: nil,
          position: nil,
          record: nil,
          ties: nil,
          wins: nil
        )
        end

        sig do
          override.returns(
            {
              losses: Float,
              played: Float,
              position: String,
              record: String,
              ties: Float,
              wins: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
