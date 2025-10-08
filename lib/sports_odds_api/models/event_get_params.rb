# frozen_string_literal: true

module SportsOddsAPI
  module Models
    # @see SportsOddsAPI::Resources::Events#get
    class EventGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      # @!attribute bookmaker_id
      #   A bookmakerID or comma-separated list of bookmakerIDs to include odds for
      #
      #   @return [String, nil]
      optional :bookmaker_id, String

      # @!attribute cancelled
      #   Only include cancelled Events (true), only non-cancelled Events (false) or all
      #   Events (omit)
      #
      #   @return [Boolean, nil]
      optional :cancelled, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute cursor
      #   The cursor for the request. Used to get the next group of Events. This should be
      #   the nextCursor from the prior response.
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute ended
      #   Only include Events which have have ended (true), only Events which have not
      #   ended (false) or all Events (omit)
      #
      #   @return [Boolean, nil]
      optional :ended, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute event_id
      #   An eventID to get Event data for
      #
      #   @return [String, nil]
      optional :event_id, String

      # @!attribute event_ids
      #   A comma separated list of eventIDs to get Event data for
      #
      #   @return [String, nil]
      optional :event_ids, String

      # @!attribute finalized
      #   Only include finalized Events (true), exclude unfinalized Events (false) or all
      #   Events (omit)
      #
      #   @return [Boolean, nil]
      optional :finalized, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute include_alt_lines
      #   Whether to include alternate lines in the odds byBookmaker data
      #
      #   @return [Boolean, nil]
      optional :include_alt_lines, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute include_opposing_odds
      #   Whether to include opposing odds for each included oddID
      #
      #   @return [Boolean, nil]
      optional :include_opposing_odds, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute league_id
      #   A leagueID or comma-separated list of leagueIDs to get Events for
      #
      #   @return [String, nil]
      optional :league_id, String

      # @!attribute limit
      #   The maximum number of Events to return
      #
      #   @return [Float, nil]
      optional :limit, Float

      # @!attribute live
      #   Only include live Events (true), only non-live Events (false) or all Events
      #   (omit)
      #
      #   @return [Boolean, nil]
      optional :live, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute odd_id
      #   An oddID or comma-separated list of oddIDs to include odds for
      #
      #   @return [String, nil]
      optional :odd_id, String

      # @!attribute odds_available
      #   Whether you want only Events which do (true) or do not (false) have odds markets
      #   which are currently available (open for wagering)
      #
      #   @return [Boolean, nil]
      optional :odds_available, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute odds_present
      #   Whether you want only Events which do (true) or do not (false) have any
      #   associated odds markets regardless of whether those odds markets are currently
      #   available (open for wagering)
      #
      #   @return [Boolean, nil]
      optional :odds_present, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute player_id
      #   A playerID or comma-separated list of playerIDs to include Events (and
      #   associated odds) for
      #
      #   @return [String, nil]
      optional :player_id, String

      # @!attribute sport_id
      #   A sportID or comma-separated list of sportIDs to get Events for
      #
      #   @return [String, nil]
      optional :sport_id, String

      # @!attribute started
      #   Only include Events which have have previously started (true), only Events which
      #   have not previously started (false) or all Events (omit)
      #
      #   @return [Boolean, nil]
      optional :started, SportsOddsAPI::Internal::Type::Boolean

      # @!attribute starts_after
      #   Get Events that start after this date
      #
      #   @return [Time, nil]
      optional :starts_after, Time

      # @!attribute starts_before
      #   Get Events that start before this date
      #
      #   @return [Time, nil]
      optional :starts_before, Time

      # @!attribute team_id
      #   A teamID or comma-separated list of teamIDs to include Events for
      #
      #   @return [String, nil]
      optional :team_id, String

      # @!attribute type
      #   Only include Events of the specified type
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(bookmaker_id: nil, cancelled: nil, cursor: nil, ended: nil, event_id: nil, event_ids: nil, finalized: nil, include_alt_lines: nil, include_opposing_odds: nil, league_id: nil, limit: nil, live: nil, odd_id: nil, odds_available: nil, odds_present: nil, player_id: nil, sport_id: nil, started: nil, starts_after: nil, starts_before: nil, team_id: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {SportsOddsAPI::Models::EventGetParams} for more details.
      #
      #   @param bookmaker_id [String] A bookmakerID or comma-separated list of bookmakerIDs to include odds for
      #
      #   @param cancelled [Boolean] Only include cancelled Events (true), only non-cancelled Events (false) or all E
      #
      #   @param cursor [String] The cursor for the request. Used to get the next group of Events. This should be
      #
      #   @param ended [Boolean] Only include Events which have have ended (true), only Events which have not end
      #
      #   @param event_id [String] An eventID to get Event data for
      #
      #   @param event_ids [String] A comma separated list of eventIDs to get Event data for
      #
      #   @param finalized [Boolean] Only include finalized Events (true), exclude unfinalized Events (false) or all
      #
      #   @param include_alt_lines [Boolean] Whether to include alternate lines in the odds byBookmaker data
      #
      #   @param include_opposing_odds [Boolean] Whether to include opposing odds for each included oddID
      #
      #   @param league_id [String] A leagueID or comma-separated list of leagueIDs to get Events for
      #
      #   @param limit [Float] The maximum number of Events to return
      #
      #   @param live [Boolean] Only include live Events (true), only non-live Events (false) or all Events (omi
      #
      #   @param odd_id [String] An oddID or comma-separated list of oddIDs to include odds for
      #
      #   @param odds_available [Boolean] Whether you want only Events which do (true) or do not (false) have odds markets
      #
      #   @param odds_present [Boolean] Whether you want only Events which do (true) or do not (false) have any associat
      #
      #   @param player_id [String] A playerID or comma-separated list of playerIDs to include Events (and associate
      #
      #   @param sport_id [String] A sportID or comma-separated list of sportIDs to get Events for
      #
      #   @param started [Boolean] Only include Events which have have previously started (true), only Events which
      #
      #   @param starts_after [Time] Get Events that start after this date
      #
      #   @param starts_before [Time] Get Events that start before this date
      #
      #   @param team_id [String] A teamID or comma-separated list of teamIDs to include Events for
      #
      #   @param type [String] Only include Events of the specified type
      #
      #   @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
