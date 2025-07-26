# typed: strong

module BlueHive
  module Resources
    class Database
      # Check MongoDB database connectivity and retrieve health statistics.
      sig do
        params(request_options: BlueHive::RequestOptions::OrHash).returns(
          BlueHive::Models::DatabaseCheckHealthResponse
        )
      end
      def check_health(request_options: {})
      end

      # @api private
      sig { params(client: BlueHive::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
