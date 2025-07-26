# typed: strong

module BlueHive
  module Models
    class FaxRetrieveStatusResponse < BlueHive::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BlueHive::Models::FaxRetrieveStatusResponse,
            BlueHive::Internal::AnyHash
          )
        end

      # Fax identifier
      sig { returns(String) }
      attr_accessor :id

      # ISO timestamp when fax was created
      sig { returns(String) }
      attr_accessor :created_at

      # Sender fax number
      sig { returns(String) }
      attr_accessor :from

      # Provider used to send the fax
      sig { returns(String) }
      attr_accessor :provider

      # Current fax status
      sig do
        returns(
          BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # Recipient fax number
      sig { returns(String) }
      attr_accessor :to

      # ISO timestamp when status was last updated
      sig { returns(String) }
      attr_accessor :updated_at

      # Cost of the fax
      sig { returns(T.nilable(Float)) }
      attr_reader :cost

      sig { params(cost: Float).void }
      attr_writer :cost

      # ISO timestamp when fax was delivered
      sig { returns(T.nilable(String)) }
      attr_reader :delivered_at

      sig { params(delivered_at: String).void }
      attr_writer :delivered_at

      # Call duration in seconds
      sig { returns(T.nilable(Float)) }
      attr_reader :duration

      sig { params(duration: Float).void }
      attr_writer :duration

      # Error message if fax failed
      sig { returns(T.nilable(String)) }
      attr_reader :error_message

      sig { params(error_message: String).void }
      attr_writer :error_message

      # Number of pages in the fax
      sig { returns(T.nilable(Float)) }
      attr_reader :page_count

      sig { params(page_count: Float).void }
      attr_writer :page_count

      # Provider-specific additional data
      sig { returns(T.nilable(T.anything)) }
      attr_reader :provider_data

      sig { params(provider_data: T.anything).void }
      attr_writer :provider_data

      sig do
        params(
          id: String,
          created_at: String,
          from: String,
          provider: String,
          status: BlueHive::Models::FaxRetrieveStatusResponse::Status::OrSymbol,
          to: String,
          updated_at: String,
          cost: Float,
          delivered_at: String,
          duration: Float,
          error_message: String,
          page_count: Float,
          provider_data: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        # Fax identifier
        id:,
        # ISO timestamp when fax was created
        created_at:,
        # Sender fax number
        from:,
        # Provider used to send the fax
        provider:,
        # Current fax status
        status:,
        # Recipient fax number
        to:,
        # ISO timestamp when status was last updated
        updated_at:,
        # Cost of the fax
        cost: nil,
        # ISO timestamp when fax was delivered
        delivered_at: nil,
        # Call duration in seconds
        duration: nil,
        # Error message if fax failed
        error_message: nil,
        # Number of pages in the fax
        page_count: nil,
        # Provider-specific additional data
        provider_data: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            from: String,
            provider: String,
            status:
              BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol,
            to: String,
            updated_at: String,
            cost: Float,
            delivered_at: String,
            duration: Float,
            error_message: String,
            page_count: Float,
            provider_data: T.anything
          }
        )
      end
      def to_hash
      end

      # Current fax status
      module Status
        extend BlueHive::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BlueHive::Models::FaxRetrieveStatusResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED =
          T.let(
            :queued,
            BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
          )
        DIALING =
          T.let(
            :dialing,
            BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
          )
        SENDING =
          T.let(
            :sending,
            BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
          )
        DELIVERED =
          T.let(
            :delivered,
            BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
          )
        RETRYING =
          T.let(
            :retrying,
            BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BlueHive::Models::FaxRetrieveStatusResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
