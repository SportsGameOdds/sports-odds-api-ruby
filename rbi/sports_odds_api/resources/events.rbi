# typed: strong

module SportsOddsAPI
  module Resources
    class Events
      # Get a list of Events
      sig do
        params(
          bookmaker_id: String,
          cancelled: T::Boolean,
          cursor: String,
          ended: T::Boolean,
          event_id: String,
          event_ids: String,
          finalized: T::Boolean,
          include_alt_lines: T::Boolean,
          include_opposing_odds: T::Boolean,
          league_id: String,
          limit: Float,
          live: T::Boolean,
          odd_id: String,
          odds_available: T::Boolean,
          odds_present: T::Boolean,
          player_id: String,
          sport_id: String,
          started: T::Boolean,
          starts_after: Time,
          starts_before: Time,
          team_id: String,
          type: String,
          request_options: SportsOddsAPI::RequestOptions::OrHash
        ).returns(SportsOddsAPI::Internal::NextCursorPage[SportsOddsAPI::Event])
      end
      def get(
        # A bookmakerID or comma-separated list of bookmakerIDs to include odds for
        bookmaker_id: nil,
        # Only include cancelled Events (true), only non-cancelled Events (false) or all
        # Events (omit)
        cancelled: nil,
        # The cursor for the request. Used to get the next group of Events. This should be
        # the nextCursor from the prior response.
        cursor: nil,
        # Only include Events which have have ended (true), only Events which have not
        # ended (false) or all Events (omit)
        ended: nil,
        # An eventID to get Event data for
        event_id: nil,
        # A comma separated list of eventIDs to get Event data for
        event_ids: nil,
        # Only include finalized Events (true), exclude unfinalized Events (false) or all
        # Events (omit)
        finalized: nil,
        # Whether to include alternate lines in the odds byBookmaker data
        include_alt_lines: nil,
        # Whether to include opposing odds for each included oddID
        include_opposing_odds: nil,
        # A leagueID or comma-separated list of leagueIDs to get Events for
        league_id: nil,
        # The maximum number of Events to return
        limit: nil,
        # Only include live Events (true), only non-live Events (false) or all Events
        # (omit)
        live: nil,
        # An oddID or comma-separated list of oddIDs to include odds for
        odd_id: nil,
        # Whether you want only Events which do (true) or do not (false) have odds markets
        # which are currently available (open for wagering)
        odds_available: nil,
        # Whether you want only Events which do (true) or do not (false) have any
        # associated odds markets regardless of whether those odds markets are currently
        # available (open for wagering)
        odds_present: nil,
        # A playerID or comma-separated list of playerIDs to include Events (and
        # associated odds) for
        player_id: nil,
        # A sportID or comma-separated list of sportIDs to get Events for
        sport_id: nil,
        # Only include Events which have have previously started (true), only Events which
        # have not previously started (false) or all Events (omit)
        started: nil,
        # Get Events that start after this date
        starts_after: nil,
        # Get Events that start before this date
        starts_before: nil,
        # A teamID or comma-separated list of teamIDs to include Events for
        team_id: nil,
        # Only include Events of the specified type
        type: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: SportsOddsAPI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
