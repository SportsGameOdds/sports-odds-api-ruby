# typed: strong

module SportsOddsAPI
  module Models
    StatGetResponse =
      T.let(
        SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Stat],
        SportsOddsAPI::Internal::Type::Converter
      )
  end
end
