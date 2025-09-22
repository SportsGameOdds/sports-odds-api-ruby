# frozen_string_literal: true

module SportsOddsAPI
  module Resources
    class Events
      # Some parameter documentations has been truncated, see
      # {SportsOddsAPI::Models::EventGetParams} for more details.
      #
      # Get a list of Events
      #
      # @overload get(bookmaker_id: nil, cancelled: nil, cursor: nil, ended: nil, event_id: nil, finalized: nil, include_alt_lines: nil, include_opposing_odds: nil, league_id: nil, limit: nil, live: nil, odd_id: nil, odds_available: nil, odds_present: nil, player_id: nil, sport_id: nil, started: nil, starts_after: nil, starts_before: nil, team_id: nil, type: nil, request_options: {})
      #
      # @param bookmaker_id [String] A bookmakerID or comma-separated list of bookmakerIDs to include odds for
      #
      # @param cancelled [Boolean] Only include cancelled Events (true), only non-cancelled Events (false) or all E
      #
      # @param cursor [String] The cursor for the request. Used to get the next group of Events. This should be
      #
      # @param ended [Boolean] Only include Events which have have ended (true), only Events which have not end
      #
      # @param event_id [String] An eventID or comma-separated list of eventIDs to get Event data for
      #
      # @param finalized [Boolean] Only include finalized Events (true), exclude unfinalized Events (false) or all
      #
      # @param include_alt_lines [Boolean] Whether to include alternate lines in the odds byBookmaker data
      #
      # @param include_opposing_odds [Boolean] Whether to include opposing odds for each included oddID
      #
      # @param league_id [String] A leagueID or comma-separated list of leagueIDs to get Events for
      #
      # @param limit [Float] The maximum number of Events to return
      #
      # @param live [Boolean] Only include live Events (true), only non-live Events (false) or all Events (omi
      #
      # @param odd_id [String] An oddID or comma-separated list of oddIDs to include odds for
      #
      # @param odds_available [Boolean] Whether you want only Events which do (true) or do not (false) have odds markets
      #
      # @param odds_present [Boolean] Whether you want only Events which do (true) or do not (false) have any associat
      #
      # @param player_id [String] A playerID or comma-separated list of playerIDs to include Events (and associate
      #
      # @param sport_id [String] A sportID or comma-separated list of sportIDs to get Events for
      #
      # @param started [Boolean] Only include Events which have have previously started (true), only Events which
      #
      # @param starts_after [Time] Get Events that start after this date
      #
      # @param starts_before [Time] Get Events that start before this date
      #
      # @param team_id [String] A teamID or comma-separated list of teamIDs to include Events for
      #
      # @param type [String] Only include Events of the specified type
      #
      # @param request_options [SportsOddsAPI::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [SportsOddsAPI::Internal::NextCursorPage<SportsOddsAPI::Models::Event>]
      #
      # @see SportsOddsAPI::Models::EventGetParams
      def get(params = {})
        parsed, options = SportsOddsAPI::EventGetParams.dump_request(params)
        @client.request(
          method: :get,
          path: "events/",
          query: parsed.transform_keys(
            bookmaker_id: "bookmakerID",
            event_id: "eventID",
            include_alt_lines: "includeAltLines",
            include_opposing_odds: "includeOpposingOdds",
            league_id: "leagueID",
            odd_id: "oddID",
            odds_available: "oddsAvailable",
            odds_present: "oddsPresent",
            player_id: "playerID",
            sport_id: "sportID",
            starts_after: "startsAfter",
            starts_before: "startsBefore",
            team_id: "teamID"
          ),
          page: SportsOddsAPI::Internal::NextCursorPage,
          model: SportsOddsAPI::Event,
          options: options
        )
      end

      # @api private
      #
      # @param client [SportsOddsAPI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
