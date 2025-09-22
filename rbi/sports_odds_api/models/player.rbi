# typed: strong

module SportsOddsAPI
  module Models
    class Player < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::Player, SportsOddsAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :aliases

      sig { params(aliases: T::Array[String]).void }
      attr_writer :aliases

      sig { returns(T.nilable(Float)) }
      attr_reader :jersey_number

      sig { params(jersey_number: Float).void }
      attr_writer :jersey_number

      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      sig { returns(T.nilable(SportsOddsAPI::Player::Lookups)) }
      attr_reader :lookups

      sig { params(lookups: SportsOddsAPI::Player::Lookups::OrHash).void }
      attr_writer :lookups

      sig { returns(T.nilable(SportsOddsAPI::Player::Names)) }
      attr_reader :names

      sig { params(names: SportsOddsAPI::Player::Names::OrHash).void }
      attr_writer :names

      sig { returns(T.nilable(String)) }
      attr_reader :player_id

      sig { params(player_id: String).void }
      attr_writer :player_id

      sig do
        returns(T.nilable(T::Hash[Symbol, SportsOddsAPI::Player::PlayerTeam]))
      end
      attr_reader :player_teams

      sig do
        params(
          player_teams:
            T::Hash[Symbol, SportsOddsAPI::Player::PlayerTeam::OrHash]
        ).void
      end
      attr_writer :player_teams

      sig { returns(T.nilable(String)) }
      attr_reader :position

      sig { params(position: String).void }
      attr_writer :position

      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      sig do
        params(
          aliases: T::Array[String],
          jersey_number: Float,
          league_id: String,
          lookups: SportsOddsAPI::Player::Lookups::OrHash,
          names: SportsOddsAPI::Player::Names::OrHash,
          player_id: String,
          player_teams:
            T::Hash[Symbol, SportsOddsAPI::Player::PlayerTeam::OrHash],
          position: String,
          sport_id: String,
          team_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        aliases: nil,
        jersey_number: nil,
        league_id: nil,
        lookups: nil,
        names: nil,
        player_id: nil,
        player_teams: nil,
        position: nil,
        sport_id: nil,
        team_id: nil
      )
      end

      sig do
        override.returns(
          {
            aliases: T::Array[String],
            jersey_number: Float,
            league_id: String,
            lookups: SportsOddsAPI::Player::Lookups,
            names: SportsOddsAPI::Player::Names,
            player_id: String,
            player_teams: T::Hash[Symbol, SportsOddsAPI::Player::PlayerTeam],
            position: String,
            sport_id: String,
            team_id: String
          }
        )
      end
      def to_hash
      end

      class Lookups < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Player::Lookups,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :any_name

        sig { params(any_name: T::Array[String]).void }
        attr_writer :any_name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :full_name

        sig { params(full_name: T::Array[String]).void }
        attr_writer :full_name

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :initials

        sig { params(initials: T::Array[String]).void }
        attr_writer :initials

        sig do
          params(
            any_name: T::Array[String],
            full_name: T::Array[String],
            initials: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(any_name: nil, full_name: nil, initials: nil)
        end

        sig do
          override.returns(
            {
              any_name: T::Array[String],
              full_name: T::Array[String],
              initials: T::Array[String]
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
              SportsOddsAPI::Player::Names,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :display_

        sig { params(display_: String).void }
        attr_writer :display_

        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        sig do
          params(
            display_: String,
            first_name: String,
            last_name: String
          ).returns(T.attached_class)
        end
        def self.new(display_: nil, first_name: nil, last_name: nil)
        end

        sig do
          override.returns(
            { display_: String, first_name: String, last_name: String }
          )
        end
        def to_hash
        end
      end

      class PlayerTeam < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Player::PlayerTeam,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :team_id

        sig { params(team_id: String).void }
        attr_writer :team_id

        sig { params(team_id: String).returns(T.attached_class) }
        def self.new(team_id: nil)
        end

        sig { override.returns({ team_id: String }) }
        def to_hash
        end
      end
    end
  end
end
