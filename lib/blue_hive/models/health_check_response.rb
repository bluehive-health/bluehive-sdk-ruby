# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Health#check
    class HealthCheckResponse < BlueHive::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, BlueHive::Models::HealthCheckResponse::Status]
      required :status, enum: -> { BlueHive::Models::HealthCheckResponse::Status }

      # @!method initialize(status:)
      #   @param status [Symbol, BlueHive::Models::HealthCheckResponse::Status]

      # @see BlueHive::Models::HealthCheckResponse#status
      module Status
        extend BlueHive::Internal::Type::Enum

        OK = :ok

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
