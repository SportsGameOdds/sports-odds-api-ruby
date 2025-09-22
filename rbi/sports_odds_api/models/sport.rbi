# typed: strong

module SportsOddsAPI
  module Models
    class Sport < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::Sport, SportsOddsAPI::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :background_image

      sig { params(background_image: String).void }
      attr_writer :background_image

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :base_periods

      sig { params(base_periods: T::Array[String]).void }
      attr_writer :base_periods

      sig { returns(T.nilable(String)) }
      attr_reader :clock_type

      sig { params(clock_type: String).void }
      attr_writer :clock_type

      sig { returns(T.nilable(Float)) }
      attr_reader :default_popularity_score

      sig { params(default_popularity_score: Float).void }
      attr_writer :default_popularity_score

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      sig { returns(T.nilable(SportsOddsAPI::Sport::EventWord)) }
      attr_reader :event_word

      sig { params(event_word: SportsOddsAPI::Sport::EventWord::OrHash).void }
      attr_writer :event_word

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :extra_periods

      sig { params(extra_periods: T::Array[String]).void }
      attr_writer :extra_periods

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_meaningful_home_away

      sig { params(has_meaningful_home_away: T::Boolean).void }
      attr_writer :has_meaningful_home_away

      sig { returns(T.nilable(String)) }
      attr_reader :image_icon

      sig { params(image_icon: String).void }
      attr_writer :image_icon

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(SportsOddsAPI::Sport::PointWord)) }
      attr_reader :point_word

      sig { params(point_word: SportsOddsAPI::Sport::PointWord::OrHash).void }
      attr_writer :point_word

      sig { returns(T.nilable(String)) }
      attr_reader :short_name

      sig { params(short_name: String).void }
      attr_writer :short_name

      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      sig { returns(T.nilable(String)) }
      attr_reader :square_image

      sig { params(square_image: String).void }
      attr_writer :square_image

      sig do
        params(
          background_image: String,
          base_periods: T::Array[String],
          clock_type: String,
          default_popularity_score: Float,
          enabled: T::Boolean,
          event_word: SportsOddsAPI::Sport::EventWord::OrHash,
          extra_periods: T::Array[String],
          has_meaningful_home_away: T::Boolean,
          image_icon: String,
          name: String,
          point_word: SportsOddsAPI::Sport::PointWord::OrHash,
          short_name: String,
          sport_id: String,
          square_image: String
        ).returns(T.attached_class)
      end
      def self.new(
        background_image: nil,
        base_periods: nil,
        clock_type: nil,
        default_popularity_score: nil,
        enabled: nil,
        event_word: nil,
        extra_periods: nil,
        has_meaningful_home_away: nil,
        image_icon: nil,
        name: nil,
        point_word: nil,
        short_name: nil,
        sport_id: nil,
        square_image: nil
      )
      end

      sig do
        override.returns(
          {
            background_image: String,
            base_periods: T::Array[String],
            clock_type: String,
            default_popularity_score: Float,
            enabled: T::Boolean,
            event_word: SportsOddsAPI::Sport::EventWord,
            extra_periods: T::Array[String],
            has_meaningful_home_away: T::Boolean,
            image_icon: String,
            name: String,
            point_word: SportsOddsAPI::Sport::PointWord,
            short_name: String,
            sport_id: String,
            square_image: String
          }
        )
      end
      def to_hash
      end

      class EventWord < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Sport::EventWord,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(SportsOddsAPI::Sport::EventWord::Long)) }
        attr_reader :long

        sig { params(long: SportsOddsAPI::Sport::EventWord::Long::OrHash).void }
        attr_writer :long

        sig { returns(T.nilable(SportsOddsAPI::Sport::EventWord::Short)) }
        attr_reader :short

        sig do
          params(short: SportsOddsAPI::Sport::EventWord::Short::OrHash).void
        end
        attr_writer :short

        sig do
          params(
            long: SportsOddsAPI::Sport::EventWord::Long::OrHash,
            short: SportsOddsAPI::Sport::EventWord::Short::OrHash
          ).returns(T.attached_class)
        end
        def self.new(long: nil, short: nil)
        end

        sig do
          override.returns(
            {
              long: SportsOddsAPI::Sport::EventWord::Long,
              short: SportsOddsAPI::Sport::EventWord::Short
            }
          )
        end
        def to_hash
        end

        class Long < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Sport::EventWord::Long,
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
                SportsOddsAPI::Sport::EventWord::Short,
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

      class PointWord < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Sport::PointWord,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(SportsOddsAPI::Sport::PointWord::Long)) }
        attr_reader :long

        sig { params(long: SportsOddsAPI::Sport::PointWord::Long::OrHash).void }
        attr_writer :long

        sig { returns(T.nilable(SportsOddsAPI::Sport::PointWord::Short)) }
        attr_reader :short

        sig do
          params(short: SportsOddsAPI::Sport::PointWord::Short::OrHash).void
        end
        attr_writer :short

        sig do
          params(
            long: SportsOddsAPI::Sport::PointWord::Long::OrHash,
            short: SportsOddsAPI::Sport::PointWord::Short::OrHash
          ).returns(T.attached_class)
        end
        def self.new(long: nil, short: nil)
        end

        sig do
          override.returns(
            {
              long: SportsOddsAPI::Sport::PointWord::Long,
              short: SportsOddsAPI::Sport::PointWord::Short
            }
          )
        end
        def to_hash
        end

        class Long < SportsOddsAPI::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                SportsOddsAPI::Sport::PointWord::Long,
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
                SportsOddsAPI::Sport::PointWord::Short,
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
