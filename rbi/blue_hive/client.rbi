# typed: strong

module BlueHive
  class Client < BlueHive::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # API key for accessing BlueHive API endpoints. Format: "ApiKey <your-api-key>" or
    # "Bearer <your-api-key>"
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(BlueHive::Resources::Health) }
    attr_reader :health

    sig { returns(BlueHive::Resources::Version) }
    attr_reader :version

    sig { returns(BlueHive::Resources::Providers) }
    attr_reader :providers

    sig { returns(BlueHive::Resources::Database) }
    attr_reader :database

    sig { returns(BlueHive::Resources::Fax) }
    attr_reader :fax

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # API key for accessing BlueHive API endpoints. Format: "ApiKey <your-api-key>" or
      # "Bearer <your-api-key>" Defaults to `ENV["BLUEHIVE_API_KEY"]`
      api_key: ENV["BLUEHIVE_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["BLUE_HIVE_BASE_URL"]`
      base_url: ENV["BLUE_HIVE_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: BlueHive::Client::DEFAULT_MAX_RETRIES,
      timeout: BlueHive::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: BlueHive::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: BlueHive::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
