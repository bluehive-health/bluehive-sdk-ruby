# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Fax#retrieve_status
    class FaxRetrieveStatusResponse < BlueHive::Internal::Type::BaseModel
      # @!attribute id
      #   Fax identifier
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
      #   @return [Symbol, BlueHive::Models::FaxRetrieveStatusResponse::Status]
      required :status, enum: -> { BlueHive::Models::FaxRetrieveStatusResponse::Status }

      # @!attribute to
      #   Recipient fax number
      #
      #   @return [String]
      required :to, String

      # @!attribute updated_at
      #   ISO timestamp when status was last updated
      #
      #   @return [String]
      required :updated_at, String, api_name: :updatedAt

      # @!attribute cost
      #   Cost of the fax
      #
      #   @return [Float, nil]
      optional :cost, Float

      # @!attribute delivered_at
      #   ISO timestamp when fax was delivered
      #
      #   @return [String, nil]
      optional :delivered_at, String, api_name: :deliveredAt

      # @!attribute duration
      #   Call duration in seconds
      #
      #   @return [Float, nil]
      optional :duration, Float

      # @!attribute error_message
      #   Error message if fax failed
      #
      #   @return [String, nil]
      optional :error_message, String, api_name: :errorMessage

      # @!attribute page_count
      #   Number of pages in the fax
      #
      #   @return [Float, nil]
      optional :page_count, Float, api_name: :pageCount

      # @!attribute provider_data
      #   Provider-specific additional data
      #
      #   @return [Object, nil]
      optional :provider_data, BlueHive::Internal::Type::Unknown, api_name: :providerData

      # @!method initialize(id:, created_at:, from:, provider:, status:, to:, updated_at:, cost: nil, delivered_at: nil, duration: nil, error_message: nil, page_count: nil, provider_data: nil)
      #   @param id [String] Fax identifier
      #
      #   @param created_at [String] ISO timestamp when fax was created
      #
      #   @param from [String] Sender fax number
      #
      #   @param provider [String] Provider used to send the fax
      #
      #   @param status [Symbol, BlueHive::Models::FaxRetrieveStatusResponse::Status] Current fax status
      #
      #   @param to [String] Recipient fax number
      #
      #   @param updated_at [String] ISO timestamp when status was last updated
      #
      #   @param cost [Float] Cost of the fax
      #
      #   @param delivered_at [String] ISO timestamp when fax was delivered
      #
      #   @param duration [Float] Call duration in seconds
      #
      #   @param error_message [String] Error message if fax failed
      #
      #   @param page_count [Float] Number of pages in the fax
      #
      #   @param provider_data [Object] Provider-specific additional data

      # Current fax status
      #
      # @see BlueHive::Models::FaxRetrieveStatusResponse#status
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
