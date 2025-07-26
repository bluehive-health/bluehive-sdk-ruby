# frozen_string_literal: true

module BlueHive
  module Resources
    class Providers
      # Search for healthcare providers by NPI number, name, or location proximity.
      #
      # @overload lookup(firstname: nil, lastname: nil, npi: nil, zipcode: nil, request_options: {})
      #
      # @param firstname [String] Provider first name
      #
      # @param lastname [String] Provider last name
      #
      # @param npi [String] Provider NPI number
      #
      # @param zipcode [String] ZIP code to filter results by proximity
      #
      # @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BlueHive::Models::ProviderLookupResponse]
      #
      # @see BlueHive::Models::ProviderLookupParams
      def lookup(params = {})
        parsed, options = BlueHive::ProviderLookupParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/providers/lookup",
          query: parsed,
          model: BlueHive::Models::ProviderLookupResponse,
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
