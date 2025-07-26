# typed: strong

module BlueHive
  module Models
    class FaxSendResponse < BlueHive::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(BlueHive::Models::FaxSendResponse, BlueHive::Internal::AnyHash)
        end

      # Unique fax identifier
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
      sig { returns(BlueHive::Models::FaxSendResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # Recipient fax number
      sig { returns(String) }
      attr_accessor :to

      # Estimated delivery time (ISO timestamp)
      sig { returns(T.nilable(String)) }
      attr_reader :estimated_delivery

      sig { params(estimated_delivery: String).void }
      attr_writer :estimated_delivery

      sig do
        params(
          id: String,
          created_at: String,
          from: String,
          provider: String,
          status: BlueHive::Models::FaxSendResponse::Status::OrSymbol,
          to: String,
          estimated_delivery: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique fax identifier
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
        # Estimated delivery time (ISO timestamp)
        estimated_delivery: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            from: String,
            provider: String,
            status: BlueHive::Models::FaxSendResponse::Status::TaggedSymbol,
            to: String,
            estimated_delivery: String
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
            T.all(Symbol, BlueHive::Models::FaxSendResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED =
          T.let(
            :queued,
            BlueHive::Models::FaxSendResponse::Status::TaggedSymbol
          )
        DIALING =
          T.let(
            :dialing,
            BlueHive::Models::FaxSendResponse::Status::TaggedSymbol
          )
        SENDING =
          T.let(
            :sending,
            BlueHive::Models::FaxSendResponse::Status::TaggedSymbol
          )
        DELIVERED =
          T.let(
            :delivered,
            BlueHive::Models::FaxSendResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            BlueHive::Models::FaxSendResponse::Status::TaggedSymbol
          )
        CANCELLED =
          T.let(
            :cancelled,
            BlueHive::Models::FaxSendResponse::Status::TaggedSymbol
          )
        RETRYING =
          T.let(
            :retrying,
            BlueHive::Models::FaxSendResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BlueHive::Models::FaxSendResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
