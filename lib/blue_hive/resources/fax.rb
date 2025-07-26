# frozen_string_literal: true

module BlueHive
  module Resources
    class Fax
      # Get a list of available fax providers and their configuration status.
      #
      # @overload list_providers(request_options: {})
      #
      # @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BlueHive::Models::FaxListProvidersResponse]
      #
      # @see BlueHive::Models::FaxListProvidersParams
      def list_providers(params = {})
        @client.request(
          method: :get,
          path: "v1/fax/providers",
          model: BlueHive::Models::FaxListProvidersResponse,
          options: params[:request_options]
        )
      end

      # Retrieve the current status and details of a fax by its ID.
      #
      # @overload retrieve_status(id, request_options: {})
      #
      # @param id [String] Fax ID returned from the send endpoint
      #
      # @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BlueHive::Models::FaxRetrieveStatusResponse]
      #
      # @see BlueHive::Models::FaxRetrieveStatusParams
      def retrieve_status(id, params = {})
        @client.request(
          method: :get,
          path: ["v1/fax/status/%1$s", id],
          model: BlueHive::Models::FaxRetrieveStatusResponse,
          options: params[:request_options]
        )
      end

      # Send a fax document to a specified number using the configured fax provider.
      #
      # @overload send_(document:, to:, from: nil, provider: nil, subject: nil, request_options: {})
      #
      # @param document [BlueHive::Models::FaxSendParams::Document]
      #
      # @param to [String] Recipient fax number (E.164 format preferred)
      #
      # @param from [String] Sender fax number (optional, uses default if not provided)
      #
      # @param provider [String] Optional provider override (uses default if not specified)
      #
      # @param subject [String] Subject line for the fax
      #
      # @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BlueHive::Models::FaxSendResponse]
      #
      # @see BlueHive::Models::FaxSendParams
      def send_(params)
        parsed, options = BlueHive::FaxSendParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/fax/send",
          body: parsed,
          model: BlueHive::Models::FaxSendResponse,
          options: options
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
