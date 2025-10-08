# typed: strong

module SportsOddsAPI
  module Models
    class EventGetParams < SportsOddsAPI::Internal::Type::BaseModel
      extend SportsOddsAPI::Internal::Type::RequestParameters::Converter
      include SportsOddsAPI::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(SportsOddsAPI::EventGetParams, SportsOddsAPI::Internal::AnyHash)
        end

      # A bookmakerID or comma-separated list of bookmakerIDs to include odds for
      sig { returns(T.nilable(String)) }
      attr_reader :bookmaker_id

      sig { params(bookmaker_id: String).void }
      attr_writer :bookmaker_id

      # Only include cancelled Events (true), only non-cancelled Events (false) or all
      # Events (omit)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :cancelled

      sig { params(cancelled: T::Boolean).void }
      attr_writer :cancelled

      # The cursor for the request. Used to get the next group of Events. This should be
      # the nextCursor from the prior response.
      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Only include Events which have have ended (true), only Events which have not
      # ended (false) or all Events (omit)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :ended

      sig { params(ended: T::Boolean).void }
      attr_writer :ended

      # An eventID to get Event data for
      sig { returns(T.nilable(String)) }
      attr_reader :event_id

      sig { params(event_id: String).void }
      attr_writer :event_id

      # A comma separated list of eventIDs to get Event data for
      sig { returns(T.nilable(String)) }
      attr_reader :event_ids

      sig { params(event_ids: String).void }
      attr_writer :event_ids

      # Only include finalized Events (true), exclude unfinalized Events (false) or all
      # Events (omit)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :finalized

      sig { params(finalized: T::Boolean).void }
      attr_writer :finalized

      # Whether to include alternate lines in the odds byBookmaker data
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_alt_lines

      sig { params(include_alt_lines: T::Boolean).void }
      attr_writer :include_alt_lines

      # Whether to include opposing odds for each included oddID
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_opposing_odds

      sig { params(include_opposing_odds: T::Boolean).void }
      attr_writer :include_opposing_odds

      # A leagueID or comma-separated list of leagueIDs to get Events for
      sig { returns(T.nilable(String)) }
      attr_reader :league_id

      sig { params(league_id: String).void }
      attr_writer :league_id

      # The maximum number of Events to return
      sig { returns(T.nilable(Float)) }
      attr_reader :limit

      sig { params(limit: Float).void }
      attr_writer :limit

      # Only include live Events (true), only non-live Events (false) or all Events
      # (omit)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :live

      sig { params(live: T::Boolean).void }
      attr_writer :live

      # An oddID or comma-separated list of oddIDs to include odds for
      sig { returns(T.nilable(String)) }
      attr_reader :odd_id

      sig { params(odd_id: String).void }
      attr_writer :odd_id

      # Whether you want only Events which do (true) or do not (false) have odds markets
      # which are currently available (open for wagering)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :odds_available

      sig { params(odds_available: T::Boolean).void }
      attr_writer :odds_available

      # Whether you want only Events which do (true) or do not (false) have any
      # associated odds markets regardless of whether those odds markets are currently
      # available (open for wagering)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :odds_present

      sig { params(odds_present: T::Boolean).void }
      attr_writer :odds_present

      # A playerID or comma-separated list of playerIDs to include Events (and
      # associated odds) for
      sig { returns(T.nilable(String)) }
      attr_reader :player_id

      sig { params(player_id: String).void }
      attr_writer :player_id

      # A sportID or comma-separated list of sportIDs to get Events for
      sig { returns(T.nilable(String)) }
      attr_reader :sport_id

      sig { params(sport_id: String).void }
      attr_writer :sport_id

      # Only include Events which have have previously started (true), only Events which
      # have not previously started (false) or all Events (omit)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :started

      sig { params(started: T::Boolean).void }
      attr_writer :started

      # Get Events that start after this date
      sig { returns(T.nilable(Time)) }
      attr_reader :starts_after

      sig { params(starts_after: Time).void }
      attr_writer :starts_after

      # Get Events that start before this date
      sig { returns(T.nilable(Time)) }
      attr_reader :starts_before

      sig { params(starts_before: Time).void }
      attr_writer :starts_before

      # A teamID or comma-separated list of teamIDs to include Events for
      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      # Only include Events of the specified type
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: SportsOddsAPI::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
