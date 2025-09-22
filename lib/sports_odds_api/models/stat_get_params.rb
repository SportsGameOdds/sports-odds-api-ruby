# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Stats#get
    class StatGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      # @!attribute sport_id
      #   SportID to get StatIDs for
      #
      #   @return [String, nil]
      optional :sport_id, String

      # @!attribute stat_id
      #   StatID to get data for
      #
      #   @return [String, nil]
      optional :stat_id, String

      # @!attribute stat_level
      #   Level of the stat, must be used in combination with sportID. Must be one of all,
      #   player, or team. Shows stats that are applicable to that specified entity,
      #   defaults to all.
      #
      #   @return [String, nil]
      optional :stat_level, String

      # @!method initialize(sport_id: nil, stat_id: nil, stat_level: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {SportsOddsAPI::Models::StatGetParams} for more details.
      #
      #   @param sport_id [String] SportID to get StatIDs for
      #
      #   @param stat_id [String] StatID to get data for
      #
      #   @param stat_level [String] Level of the stat, must be used in combination with sportID. Must be one of all,
      #
      #   @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
