# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Fax#send_
    class FaxSendResponse < BlueHive::Internal::Type::BaseModel
      # @!attribute id
      #   Unique fax identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   ISO timestamp when fax was created
      #
      #   @return [String]
      required :created_at, String, api_name: :createdAt

      # @!attribute from
      #   Sender fax number
      #
      #   @return [String]
      required :from, String

      # @!attribute provider
      #   Provider used to send the fax
      #
      #   @return [String]
      required :provider, String

      # @!attribute status
      #   Current fax status
      #
      #   @return [Symbol, BlueHive::Models::FaxSendResponse::Status]
      required :status, enum: -> { BlueHive::Models::FaxSendResponse::Status }

      # @!attribute to
      #   Recipient fax number
      #
      #   @return [String]
      required :to, String

      # @!attribute estimated_delivery
      #   Estimated delivery time (ISO timestamp)
      #
      #   @return [String, nil]
      optional :estimated_delivery, String, api_name: :estimatedDelivery

      # @!method initialize(id:, created_at:, from:, provider:, status:, to:, estimated_delivery: nil)
      #   @param id [String] Unique fax identifier
      #
      #   @param created_at [String] ISO timestamp when fax was created
      #
      #   @param from [String] Sender fax number
      #
      #   @param provider [String] Provider used to send the fax
      #
      #   @param status [Symbol, BlueHive::Models::FaxSendResponse::Status] Current fax status
      #
      #   @param to [String] Recipient fax number
      #
      #   @param estimated_delivery [String] Estimated delivery time (ISO timestamp)

      # Current fax status
      #
      # @see BlueHive::Models::FaxSendResponse#status
      module Status
        extend BlueHive::Internal::Type::Enum

        QUEUED = :queued
        DIALING = :dialing
        SENDING = :sending
        DELIVERED = :delivered
        FAILED = :failed
        CANCELLED = :cancelled
        RETRYING = :retrying

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
