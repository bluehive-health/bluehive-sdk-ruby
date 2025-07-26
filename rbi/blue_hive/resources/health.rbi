# typed: strong

module BlueHive
  module Resources
    class Health
      # Check the service health and ensure the API is running properly.
      sig do
        params(request_options: BlueHive::RequestOptions::OrHash).returns(
          BlueHive::Models::HealthCheckResponse
        )
      end
      def check(request_options: {})
      end

      # @api private
      sig { params(client: BlueHive::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
