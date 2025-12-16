# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "sports_odds_api/version"
require_relative "sports_odds_api/internal/util"
require_relative "sports_odds_api/internal/type/converter"
require_relative "sports_odds_api/internal/type/unknown"
require_relative "sports_odds_api/internal/type/boolean"
require_relative "sports_odds_api/internal/type/file_input"
require_relative "sports_odds_api/internal/type/enum"
require_relative "sports_odds_api/internal/type/union"
require_relative "sports_odds_api/internal/type/array_of"
require_relative "sports_odds_api/internal/type/hash_of"
require_relative "sports_odds_api/internal/type/base_model"
require_relative "sports_odds_api/internal/type/base_page"
require_relative "sports_odds_api/internal/type/request_parameters"
require_relative "sports_odds_api/internal"
require_relative "sports_odds_api/request_options"
require_relative "sports_odds_api/file_part"
require_relative "sports_odds_api/errors"
require_relative "sports_odds_api/internal/transport/base_client"
require_relative "sports_odds_api/internal/transport/pooled_net_requester"
require_relative "sports_odds_api/client"
require_relative "sports_odds_api/internal/next_cursor_page"
require_relative "sports_odds_api/models/account_get_usage_params"
require_relative "sports_odds_api/models/account_usage"
require_relative "sports_odds_api/models/event"
require_relative "sports_odds_api/models/event_get_params"
require_relative "sports_odds_api/models/league"
require_relative "sports_odds_api/models/league_get_params"
require_relative "sports_odds_api/models/league_get_response"
require_relative "sports_odds_api/models/player"
require_relative "sports_odds_api/models/player_get_params"
require_relative "sports_odds_api/models/rate_limit_interval"
require_relative "sports_odds_api/models/sport"
require_relative "sports_odds_api/models/sport_get_params"
require_relative "sports_odds_api/models/sport_get_response"
require_relative "sports_odds_api/models/stat"
require_relative "sports_odds_api/models/stat_get_params"
require_relative "sports_odds_api/models/stat_get_response"
require_relative "sports_odds_api/models/stream_events_params"
require_relative "sports_odds_api/models/stream_events_response"
require_relative "sports_odds_api/models/team"
require_relative "sports_odds_api/models/team_get_params"
require_relative "sports_odds_api/models"
require_relative "sports_odds_api/resources/account"
require_relative "sports_odds_api/resources/events"
require_relative "sports_odds_api/resources/leagues"
require_relative "sports_odds_api/resources/players"
require_relative "sports_odds_api/resources/sports"
require_relative "sports_odds_api/resources/stats"
require_relative "sports_odds_api/resources/stream"
require_relative "sports_odds_api/resources/teams"
