# typed: strong

module SportsOddsAPI
  module Models
    LeagueGetResponse =
      T.let(
        SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::League],
        SportsOddsAPI::Internal::Type::Converter
      )
  end
end
