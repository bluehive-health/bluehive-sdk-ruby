# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Database#check_health
    class DatabaseCheckHealthResponse < BlueHive::Internal::Type::BaseModel
      # @!attribute status
      #   Database health status
      #
      #   @return [Symbol, BlueHive::Models::DatabaseCheckHealthResponse::Status]
      required :status, enum: -> { BlueHive::Models::DatabaseCheckHealthResponse::Status }

      # @!attribute timestamp
      #   Health check timestamp
      #
      #   @return [String]
      required :timestamp, String

      # @!attribute database
      #   Database name (hidden in production)
      #
      #   @return [String, nil]
      optional :database, String

      # @!attribute error
      #   Error message if status is error
      #
      #   @return [String, nil]
      optional :error, String

      # @!attribute stats
      #   Database statistics (not available in production)
      #
      #   @return [BlueHive::Models::DatabaseCheckHealthResponse::Stats, nil]
      optional :stats, -> { BlueHive::Models::DatabaseCheckHealthResponse::Stats }

      # @!method initialize(status:, timestamp:, database: nil, error: nil, stats: nil)
      #   @param status [Symbol, BlueHive::Models::DatabaseCheckHealthResponse::Status] Database health status
      #
      #   @param timestamp [String] Health check timestamp
      #
      #   @param database [String] Database name (hidden in production)
      #
      #   @param error [String] Error message if status is error
      #
      #   @param stats [BlueHive::Models::DatabaseCheckHealthResponse::Stats] Database statistics (not available in production)

      # Database health status
      #
      # @see BlueHive::Models::DatabaseCheckHealthResponse#status
      module Status
        extend BlueHive::Internal::Type::Enum

        OK = :ok
        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see BlueHive::Models::DatabaseCheckHealthResponse#stats
      class Stats < BlueHive::Internal::Type::BaseModel
        # @!attribute collections
        #   Number of collections
        #
        #   @return [Float, nil]
        optional :collections, Float

        # @!attribute data_size
        #   Total data size in bytes
        #
        #   @return [Float, nil]
        optional :data_size, Float, api_name: :dataSize

        # @!attribute documents
        #   Total number of documents
        #
        #   @return [Float, nil]
        optional :documents, Float

        # @!method initialize(collections: nil, data_size: nil, documents: nil)
        #   Database statistics (not available in production)
        #
        #   @param collections [Float] Number of collections
        #
        #   @param data_size [Float] Total data size in bytes
        #
        #   @param documents [Float] Total number of documents
      end
    end
  end
end
