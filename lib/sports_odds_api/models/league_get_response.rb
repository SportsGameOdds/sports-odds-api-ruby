# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @type [SportsOddsAPI::Internal::Type::Converter]
    LeagueGetResponse = SportsOddsAPI::Internal::Type::ArrayOf[-> { SportsOddsAPI::League }]
  end
end
