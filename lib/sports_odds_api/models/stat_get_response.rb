# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @type [SportsOddsAPI::Internal::Type::Converter]
    StatGetResponse = SportsOddsAPI::Internal::Type::ArrayOf[-> { SportsOddsAPI::Stat }]
  end
end
