# typed: strong

module SportsOddsAPI
  module Models
    class Stat < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::Stat, SportsOddsAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(SportsOddsAPI::Stat::Displays)) }
      attr_reader :displays

      sig { params(displays: SportsOddsAPI::Stat::Displays::OrHash).void }
      attr_writer :displays

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_score_stat

      sig { params(is_score_stat: T::Boolean).void }
      attr_writer :is_score_stat

      sig { returns(T.nilable(String)) }
      attr_reader :stat_id

      sig { params(stat_id: String).void }
      attr_writer :stat_id

      sig { returns(T.nilable(SportsOddsAPI::Stat::SupportedLevels)) }
      attr_reader :supported_levels

      sig do
        params(
          supported_levels: SportsOddsAPI::Stat::SupportedLevels::OrHash
        ).void
      end
      attr_writer :supported_levels

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :supported_sports

      sig { params(supported_sports: T::Hash[Symbol, T.anything]).void }
      attr_writer :supported_sports

      sig { returns(T.nilable(SportsOddsAPI::Stat::Units)) }
      attr_reader :units

      sig { params(units: SportsOddsAPI::Stat::Units::OrHash).void }
      attr_writer :units

      sig do
        params(
          description: String,
          displays: SportsOddsAPI::Stat::Displays::OrHash,
          is_score_stat: T::Boolean,
          stat_id: String,
          supported_levels: SportsOddsAPI::Stat::SupportedLevels::OrHash,
          supported_sports: T::Hash[Symbol, T.anything],
          units: SportsOddsAPI::Stat::Units::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        description: nil,
        displays: nil,
        is_score_stat: nil,
        stat_id: nil,
        supported_levels: nil,
        supported_sports: nil,
        units: nil
      )
      end

      sig do
        override.returns(
          {
            description: String,
            displays: SportsOddsAPI::Stat::Displays,
            is_score_stat: T::Boolean,
            stat_id: String,
            supported_levels: SportsOddsAPI::Stat::SupportedLevels,
            supported_sports: T::Hash[Symbol, T.anything],
            units: SportsOddsAPI::Stat::Units
          }
        )
      end
      def to_hash
      end

      class Displays < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Stat::Displays,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :long

        sig { params(long: String).void }
        attr_writer :long

        sig { returns(T.nilable(String)) }
        attr_reader :short

        sig { params(short: String).void }
        attr_writer :short

        sig { params(long: String, short: String).returns(T.attached_class) }
        def self.new(long: nil, short: nil)
        end

        sig { override.returns({ long: String, short: String }) }
        def to_hash
        end
      end

      class SupportedLevels < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Stat::SupportedLevels,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :all

        sig { params(all: T::Boolean).void }
        attr_writer :all

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :player

        sig { params(player: T::Boolean).void }
        attr_writer :player

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :team

        sig { params(team: T::Boolean).void }
        attr_writer :team

        sig do
          params(all: T::Boolean, player: T::Boolean, team: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(all: nil, player: nil, team: nil)
        end

        sig do
          override.returns(
            { all: T::Boolean, player: T::Boolean, team: T::Boolean }
          )
        end
        def to_hash
        end
      end

      class Units < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(SportsOddsAPI::Stat::Units, SportsOddsAPI::Internal::AnyHash)
          end

        sig { returns(T.nilable(SportsOddsAPI::Stat::Units::Long)) }
        attr_reader :long

        sig { params(long: SportsOddsAPI::Stat::Units::Long::OrHash).void }
        attr_writer :long

        sig { returns(T.nilable(SportsOddsAPI::Stat::Units::Short)) }
        attr_reader :short

        sig { params(short: SportsOddsAPI::Stat::Units::Short::OrHash).void }
        attr_writer :short

        sig do
          params(
            long: SportsOddsAPI::Stat::Units::Long::OrHash,
            short: SportsOddsAPI::Stat::Units::Short::OrHash
          ).returns(T.attached_class)
        end
        def self.new(long: nil, short: nil)
        end

        sig do
          override.returns(
            {
              long: SportsOddsAPI::Stat::Units::Long,
              short: SportsOddsAPI::Stat::Units::Short
            }
          )
        end
        def to_hash
        end

        class Long < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Stat::Units::Long,
                SportsOddsAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :plural

          sig { params(plural: String).void }
          attr_writer :plural

          sig { returns(T.nilable(String)) }
          attr_reader :singular

          sig { params(singular: String).void }
          attr_writer :singular

          sig do
            params(plural: String, singular: String).returns(T.attached_class)
          end
          def self.new(plural: nil, singular: nil)
          end

          sig { override.returns({ plural: String, singular: String }) }
          def to_hash
          end
        end

        class Short < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Stat::Units::Short,
                SportsOddsAPI::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :plural

          sig { params(plural: String).void }
          attr_writer :plural

          sig { returns(T.nilable(String)) }
          attr_reader :singular

          sig { params(singular: String).void }
          attr_writer :singular

          sig do
            params(plural: String, singular: String).returns(T.attached_class)
          end
          def self.new(plural: nil, singular: nil)
          end

          sig { override.returns({ plural: String, singular: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
