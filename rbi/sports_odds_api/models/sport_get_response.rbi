# typed: strong

module SportsOddsAPI
  module Models
    SportGetResponse =
      T.let(
        SportsOddsAPI::Internal::Type::ArrayOf[SportsOddsAPI::Sport],
        SportsOddsAPI::Internal::Type::Converter
      )
  end
end
