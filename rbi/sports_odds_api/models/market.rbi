# typed: strong

module SportsOddsAPI
  module Models
    class Market < SportsOddsAPI::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::Market, SportsOddsAPI::Internal::AnyHash)
        end

      # The number of unique active events with available odds for this market across
      # all supported league and bookmaker combinations.
      sig { returns(T.nilable(Float)) }
      attr_reader :active_events

      sig { params(active_events: Float).void }
      attr_writer :active_events

      # The type of bet
      sig { returns(T.nilable(String)) }
      attr_reader :bet_type_id

      sig { params(bet_type_id: String).void }
      attr_writer :bet_type_id

      # True if this is a sub-period of a main market
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_main_derivative

      sig { params(is_main_derivative: T::Boolean).void }
      attr_writer :is_main_derivative

      # True if this is a main market
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_main_market

      sig { params(is_main_market: T::Boolean).void }
      attr_writer :is_main_market

      # True if this is a prop bet
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_prop

      sig { params(is_prop: T::Boolean).void }
      attr_writer :is_prop

      # True if this market is for a sub-period
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_sub_period

      sig { params(is_sub_period: T::Boolean).void }
      attr_writer :is_sub_period

      # True if this market is supported by at least one league/bookmaker.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_supported

      sig { params(is_supported: T::Boolean).void }
      attr_writer :is_supported

      # The unique identifier for the group (all sides of the market) this market
      # belongs to
      sig { returns(T.nilable(String)) }
      attr_reader :market_group_id

      sig { params(market_group_id: String).void }
      attr_writer :market_group_id

      # The primary display name for this market's group
      sig { returns(T.nilable(String)) }
      attr_reader :market_group_name

      sig { params(market_group_name: String).void }
      attr_writer :market_group_name

      # An alternative display name for this market's group
      sig { returns(T.nilable(String)) }
      attr_reader :market_group_name_alias

      sig { params(market_group_name_alias: String).void }
      attr_writer :market_group_name_alias

      # Sport-specific market group names when they differ from the primary name
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :market_group_name_by_sport

      sig { params(market_group_name_by_sport: T::Hash[Symbol, String]).void }
      attr_writer :market_group_name_by_sport

      # The unique identifier for this market
      sig { returns(T.nilable(String)) }
      attr_reader :odd_id

      sig { params(odd_id: String).void }
      attr_writer :odd_id

      # The period of the event this market applies to
      sig { returns(T.nilable(String)) }
      attr_reader :period_id

      sig { params(period_id: String).void }
      attr_writer :period_id

      # Set to a player's unique playerID if it's a player prop
      sig { returns(T.nilable(String)) }
      attr_reader :player_id

      sig { params(player_id: String).void }
      attr_writer :player_id

      # The type of prop bet
      sig { returns(T.nilable(SportsOddsAPI::Market::PropType::TaggedSymbol)) }
      attr_reader :prop_type

      sig { params(prop_type: SportsOddsAPI::Market::PropType::OrSymbol).void }
      attr_writer :prop_type

      # The side of the bet
      sig { returns(T.nilable(String)) }
      attr_reader :side_id

      sig { params(side_id: String).void }
      attr_writer :side_id

      # The statEntityID represents whose performance on the stat is being evaluated
      sig { returns(T.nilable(String)) }
      attr_reader :stat_entity_id

      sig { params(stat_entity_id: String).void }
      attr_writer :stat_entity_id

      # The statistic which is being evaluated as a part of this market
      sig { returns(T.nilable(String)) }
      attr_reader :stat_id

      sig { params(stat_id: String).void }
      attr_writer :stat_id

      # Nested object showing which leagues and bookmakers support this market.
      sig do
        returns(
          T.nilable(
            T::Hash[Symbol, T::Hash[Symbol, SportsOddsAPI::Market::Support]]
          )
        )
      end
      attr_reader :support

      sig do
        params(
          support:
            T::Hash[
              Symbol,
              T::Hash[Symbol, SportsOddsAPI::Market::Support::OrHash]
            ]
        ).void
      end
      attr_writer :support

      # Set to team's unique teamID if it's a team prop for a tournament type event
      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      sig do
        params(
          active_events: Float,
          bet_type_id: String,
          is_main_derivative: T::Boolean,
          is_main_market: T::Boolean,
          is_prop: T::Boolean,
          is_sub_period: T::Boolean,
          is_supported: T::Boolean,
          market_group_id: String,
          market_group_name: String,
          market_group_name_alias: String,
          market_group_name_by_sport: T::Hash[Symbol, String],
          odd_id: String,
          period_id: String,
          player_id: String,
          prop_type: SportsOddsAPI::Market::PropType::OrSymbol,
          side_id: String,
          stat_entity_id: String,
          stat_id: String,
          support:
            T::Hash[
              Symbol,
              T::Hash[Symbol, SportsOddsAPI::Market::Support::OrHash]
            ],
          team_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The number of unique active events with available odds for this market across
        # all supported league and bookmaker combinations.
        active_events: nil,
        # The type of bet
        bet_type_id: nil,
        # True if this is a sub-period of a main market
        is_main_derivative: nil,
        # True if this is a main market
        is_main_market: nil,
        # True if this is a prop bet
        is_prop: nil,
        # True if this market is for a sub-period
        is_sub_period: nil,
        # True if this market is supported by at least one league/bookmaker.
        is_supported: nil,
        # The unique identifier for the group (all sides of the market) this market
        # belongs to
        market_group_id: nil,
        # The primary display name for this market's group
        market_group_name: nil,
        # An alternative display name for this market's group
        market_group_name_alias: nil,
        # Sport-specific market group names when they differ from the primary name
        market_group_name_by_sport: nil,
        # The unique identifier for this market
        odd_id: nil,
        # The period of the event this market applies to
        period_id: nil,
        # Set to a player's unique playerID if it's a player prop
        player_id: nil,
        # The type of prop bet
        prop_type: nil,
        # The side of the bet
        side_id: nil,
        # The statEntityID represents whose performance on the stat is being evaluated
        stat_entity_id: nil,
        # The statistic which is being evaluated as a part of this market
        stat_id: nil,
        # Nested object showing which leagues and bookmakers support this market.
        support: nil,
        # Set to team's unique teamID if it's a team prop for a tournament type event
        team_id: nil
      )
      end

      sig do
        override.returns(
          {
            active_events: Float,
            bet_type_id: String,
            is_main_derivative: T::Boolean,
            is_main_market: T::Boolean,
            is_prop: T::Boolean,
            is_sub_period: T::Boolean,
            is_supported: T::Boolean,
            market_group_id: String,
            market_group_name: String,
            market_group_name_alias: String,
            market_group_name_by_sport: T::Hash[Symbol, String],
            odd_id: String,
            period_id: String,
            player_id: String,
            prop_type: SportsOddsAPI::Market::PropType::TaggedSymbol,
            side_id: String,
            stat_entity_id: String,
            stat_id: String,
            support:
              T::Hash[Symbol, T::Hash[Symbol, SportsOddsAPI::Market::Support]],
            team_id: String
          }
        )
      end
      def to_hash
      end

      # The type of prop bet
      module PropType
        extend SportsOddsAPI::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, SportsOddsAPI::Market::PropType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GAME_PROP =
          T.let(:game_prop, SportsOddsAPI::Market::PropType::TaggedSymbol)
        TEAM_PROP =
          T.let(:team_prop, SportsOddsAPI::Market::PropType::TaggedSymbol)
        PLAYER_PROP =
          T.let(:player_prop, SportsOddsAPI::Market::PropType::TaggedSymbol)
        OTHER_PROP =
          T.let(:other_prop, SportsOddsAPI::Market::PropType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[SportsOddsAPI::Market::PropType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Support < SportsOddsAPI::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              SportsOddsAPI::Market::Support,
              SportsOddsAPI::Internal::AnyHash
            )
          end

        # Whether this market is supported for the given league and bookmaker combination.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :supported

        sig { params(supported: T::Boolean).void }
        attr_writer :supported

        sig { params(supported: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Whether this market is supported for the given league and bookmaker combination.
          supported: nil
        )
        end

        sig { override.returns({ supported: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
