# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @type [SportsOddsAPI::Internal::Type::Converter]
    SportGetResponse = SportsOddsAPI::Internal::Type::ArrayOf[-> { SportsOddsAPI::Sport }]
  end
end
