# frozen_string_literal: true

module BlueHive
  module Resources
    class Version
      # Retrieve the current version of the BlueHive API.
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BlueHive::Models::VersionRetrieveResponse]
      #
      # @see BlueHive::Models::VersionRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "v1/version",
          model: BlueHive::Models::VersionRetrieveResponse,
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
