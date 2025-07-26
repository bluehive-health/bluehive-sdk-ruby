# typed: strong

module BlueHive
  module Resources
    class Fax
      # Get a list of available fax providers and their configuration status.
      sig do
        params(request_options: BlueHive::RequestOptions::OrHash).returns(
          BlueHive::Models::FaxListProvidersResponse
        )
      end
      def list_providers(request_options: {})
      end

      # Retrieve the current status and details of a fax by its ID.
      sig do
        params(
          id: String,
          request_options: BlueHive::RequestOptions::OrHash
        ).returns(BlueHive::Models::FaxRetrieveStatusResponse)
      end
      def retrieve_status(
        # Fax ID returned from the send endpoint
        id,
        request_options: {}
      )
      end

      # Send a fax document to a specified number using the configured fax provider.
      sig do
        params(
          document: BlueHive::FaxSendParams::Document::OrHash,
          to: String,
          from: String,
          provider: String,
          subject: String,
          request_options: BlueHive::RequestOptions::OrHash
        ).returns(BlueHive::Models::FaxSendResponse)
      end
      def send_(
        document:,
        # Recipient fax number (E.164 format preferred)
        to:,
        # Sender fax number (optional, uses default if not provided)
        from: nil,
        # Optional provider override (uses default if not specified)
        provider: nil,
        # Subject line for the fax
        subject: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: BlueHive::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
