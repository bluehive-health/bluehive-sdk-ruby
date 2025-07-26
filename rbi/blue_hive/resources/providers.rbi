# typed: strong

module BlueHive
  module Resources
    class Providers
      # Search for healthcare providers by NPI number, name, or location proximity.
      sig do
        params(
          firstname: String,
          lastname: String,
          npi: String,
          zipcode: String,
          request_options: BlueHive::RequestOptions::OrHash
        ).returns(BlueHive::Models::ProviderLookupResponse)
      end
      def lookup(
        # Provider first name
        firstname: nil,
        # Provider last name
        lastname: nil,
        # Provider NPI number
        npi: nil,
        # ZIP code to filter results by proximity
        zipcode: nil,
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
