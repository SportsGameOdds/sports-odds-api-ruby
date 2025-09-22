# typed: strong

module SportsOddsAPI
  class Client < SportsOddsAPI::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # API key via header
    sig { returns(T.nilable(String)) }
    attr_reader :api_key_header

    # API key via query param
    sig { returns(T.nilable(String)) }
    attr_reader :api_key_param

    sig { returns(SportsOddsAPI::Resources::Events) }
    attr_reader :events

    sig { returns(SportsOddsAPI::Resources::Teams) }
    attr_reader :teams

    sig { returns(SportsOddsAPI::Resources::Players) }
    attr_reader :players

    sig { returns(SportsOddsAPI::Resources::Leagues) }
    attr_reader :leagues

    sig { returns(SportsOddsAPI::Resources::Sports) }
    attr_reader :sports

    sig { returns(SportsOddsAPI::Resources::Stats) }
    attr_reader :stats

    sig { returns(SportsOddsAPI::Resources::Account) }
    attr_reader :account

    sig { returns(SportsOddsAPI::Resources::Stream) }
    attr_reader :stream

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_query
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key_header: T.nilable(String),
        api_key_param: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # API key via header Defaults to `ENV["SPORTS_ODDS_API_KEY_HEADER"]`
      api_key_header: ENV["SPORTS_ODDS_API_KEY_HEADER"],
      # API key via query param Defaults to `ENV["SPORTS_ODDS_API_KEY_HEADER"]`
      api_key_param: ENV["SPORTS_ODDS_API_KEY_HEADER"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["SPORTS_GAME_ODDS_BASE_URL"]`
      base_url: ENV["SPORTS_GAME_ODDS_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: SportsOddsAPI::Client::DEFAULT_MAX_RETRIES,
      timeout: SportsOddsAPI::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: SportsOddsAPI::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: SportsOddsAPI::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
