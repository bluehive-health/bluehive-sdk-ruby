# typed: strong

module BlueHive
  module Models
    class DatabaseCheckHealthResponse < BlueHive::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BlueHive::Models::DatabaseCheckHealthResponse,
            BlueHive::Internal::AnyHash
          )
        end

      # Database health status
      sig do
        returns(
          BlueHive::Models::DatabaseCheckHealthResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # Health check timestamp
      sig { returns(String) }
      attr_accessor :timestamp

      # Database name (hidden in production)
      sig { returns(T.nilable(String)) }
      attr_reader :database

      sig { params(database: String).void }
      attr_writer :database

      # Error message if status is error
      sig { returns(T.nilable(String)) }
      attr_reader :error

      sig { params(error: String).void }
      attr_writer :error

      # Database statistics (not available in production)
      sig do
        returns(T.nilable(BlueHive::Models::DatabaseCheckHealthResponse::Stats))
      end
      attr_reader :stats

      sig do
        params(
          stats: BlueHive::Models::DatabaseCheckHealthResponse::Stats::OrHash
        ).void
      end
      attr_writer :stats

      sig do
        params(
          status:
            BlueHive::Models::DatabaseCheckHealthResponse::Status::OrSymbol,
          timestamp: String,
          database: String,
          error: String,
          stats: BlueHive::Models::DatabaseCheckHealthResponse::Stats::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Database health status
        status:,
        # Health check timestamp
        timestamp:,
        # Database name (hidden in production)
        database: nil,
        # Error message if status is error
        error: nil,
        # Database statistics (not available in production)
        stats: nil
      )
      end

      sig do
        override.returns(
          {
            status:
              BlueHive::Models::DatabaseCheckHealthResponse::Status::TaggedSymbol,
            timestamp: String,
            database: String,
            error: String,
            stats: BlueHive::Models::DatabaseCheckHealthResponse::Stats
          }
        )
      end
      def to_hash
      end

      # Database health status
      module Status
        extend BlueHive::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BlueHive::Models::DatabaseCheckHealthResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK =
          T.let(
            :ok,
            BlueHive::Models::DatabaseCheckHealthResponse::Status::TaggedSymbol
          )
        ERROR =
          T.let(
            :error,
            BlueHive::Models::DatabaseCheckHealthResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BlueHive::Models::DatabaseCheckHealthResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Stats < BlueHive::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BlueHive::Models::DatabaseCheckHealthResponse::Stats,
              BlueHive::Internal::AnyHash
            )
          end

        # Number of collections
        sig { returns(T.nilable(Float)) }
        attr_reader :collections

        sig { params(collections: Float).void }
        attr_writer :collections

        # Total data size in bytes
        sig { returns(T.nilable(Float)) }
        attr_reader :data_size

        sig { params(data_size: Float).void }
        attr_writer :data_size

        # Total number of documents
        sig { returns(T.nilable(Float)) }
        attr_reader :documents

        sig { params(documents: Float).void }
        attr_writer :documents

        # Database statistics (not available in production)
        sig do
          params(
            collections: Float,
            data_size: Float,
            documents: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of collections
          collections: nil,
          # Total data size in bytes
          data_size: nil,
          # Total number of documents
          documents: nil
        )
        end

        sig do
          override.returns(
            { collections: Float, data_size: Float, documents: Float }
          )
        end
        def to_hash
        end
      end
    end
  end
end
