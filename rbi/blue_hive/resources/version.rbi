# typed: strong

module BlueHive
  module Resources
    class Version
      # Retrieve the current version of the BlueHive API.
      sig do
        params(request_options: BlueHive::RequestOptions::OrHash).returns(
          BlueHive::Models::VersionRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: BlueHive::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
