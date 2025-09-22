# frozen_string_literal: true

module SportsOddsAPI
  [
    SportsOddsAPI::Internal::Type::BaseModel,
    *SportsOddsAPI::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, SportsOddsAPI::Internal::AnyHash) } }
  end

  SportsOddsAPI::Internal::Util.walk_namespaces(SportsOddsAPI::Models).each do |mod|
    case mod
    in SportsOddsAPI::Internal::Type::Enum | SportsOddsAPI::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  SportsOddsAPI::Internal::Util.walk_namespaces(SportsOddsAPI::Models)
                               .lazy
                               .grep(SportsOddsAPI::Internal::Type::Union)
                               .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccountGetUsageParams = SportsOddsAPI::Models::AccountGetUsageParams

  AccountUsage = SportsOddsAPI::Models::AccountUsage

  Event = SportsOddsAPI::Models::Event

  EventGetParams = SportsOddsAPI::Models::EventGetParams

  League = SportsOddsAPI::Models::League

  LeagueGetParams = SportsOddsAPI::Models::LeagueGetParams

  Player = SportsOddsAPI::Models::Player

  PlayerGetParams = SportsOddsAPI::Models::PlayerGetParams

  RateLimitInterval = SportsOddsAPI::Models::RateLimitInterval

  Sport = SportsOddsAPI::Models::Sport

  SportGetParams = SportsOddsAPI::Models::SportGetParams

  Stat = SportsOddsAPI::Models::Stat

  StatGetParams = SportsOddsAPI::Models::StatGetParams

  StreamEventsParams = SportsOddsAPI::Models::StreamEventsParams

  Team = SportsOddsAPI::Models::Team

  TeamGetParams = SportsOddsAPI::Models::TeamGetParams
end
