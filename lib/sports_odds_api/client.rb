# frozen_string_literal: true

module SportsOddsAPI
  class Client < SportsOddsAPI::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # API key via header
    # @return [String, nil]
    attr_reader :api_key_header

    # API key via query param
    # @return [String, nil]
    attr_reader :api_key_param

    # @return [SportsOddsAPI::Resources::Events]
    attr_reader :events

    # @return [SportsOddsAPI::Resources::Teams]
    attr_reader :teams

    # @return [SportsOddsAPI::Resources::Players]
    attr_reader :players

    # @return [SportsOddsAPI::Resources::Leagues]
    attr_reader :leagues

    # @return [SportsOddsAPI::Resources::Sports]
    attr_reader :sports

    # @return [SportsOddsAPI::Resources::Stats]
    attr_reader :stats

    # @return [SportsOddsAPI::Resources::Account]
    attr_reader :account

    # @return [SportsOddsAPI::Resources::Stream]
    attr_reader :stream

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"x-api-key" => @api_key_header}
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_query
      {"apiKey" => @api_key_param}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key_header [String, nil] API key via header Defaults to `ENV["SPORTS_ODDS_API_KEY_HEADER"]`
    #
    # @param api_key_param [String, nil] API key via query param Defaults to `ENV["SPORTS_ODDS_API_KEY_HEADER"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["SPORTS_GAME_ODDS_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key_header: ENV["SPORTS_ODDS_API_KEY_HEADER"],
      api_key_param: ENV["SPORTS_ODDS_API_KEY_HEADER"],
      base_url: ENV["SPORTS_GAME_ODDS_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.sportsgameodds.com/v2"

      @api_key_header = api_key_header&.to_s
      @api_key_param = api_key_param&.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @events = SportsOddsAPI::Resources::Events.new(client: self)
      @teams = SportsOddsAPI::Resources::Teams.new(client: self)
      @players = SportsOddsAPI::Resources::Players.new(client: self)
      @leagues = SportsOddsAPI::Resources::Leagues.new(client: self)
      @sports = SportsOddsAPI::Resources::Sports.new(client: self)
      @stats = SportsOddsAPI::Resources::Stats.new(client: self)
      @account = SportsOddsAPI::Resources::Account.new(client: self)
      @stream = SportsOddsAPI::Resources::Stream.new(client: self)
    end
  end
end
