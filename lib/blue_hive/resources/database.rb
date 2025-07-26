# frozen_string_literal: true

module BlueHive
  module Resources
    class Database
      # Check MongoDB database connectivity and retrieve health statistics.
      #
      # @overload check_health(request_options: {})
      #
      # @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BlueHive::Models::DatabaseCheckHealthResponse]
      #
      # @see BlueHive::Models::DatabaseCheckHealthParams
      def check_health(params = {})
        @client.request(
          method: :get,
          path: "v1/database/health",
          model: BlueHive::Models::DatabaseCheckHealthResponse,
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
