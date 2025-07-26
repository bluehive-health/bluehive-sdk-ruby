# frozen_string_literal: true

module BlueHive
  module Resources
    class Health
      # Check the service health and ensure the API is running properly.
      #
      # @overload check(request_options: {})
      #
      # @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BlueHive::Models::HealthCheckResponse]
      #
      # @see BlueHive::Models::HealthCheckParams
      def check(params = {})
        @client.request(
          method: :get,
          path: "v1/health",
          model: BlueHive::Models::HealthCheckResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [BlueHive::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
