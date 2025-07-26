# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Providers#lookup
    class ProviderLookupParams < BlueHive::Internal::Type::BaseModel
      extend BlueHive::Internal::Type::RequestParameters::Converter
      include BlueHive::Internal::Type::RequestParameters

      # @!attribute firstname
      #   Provider first name
      #
      #   @return [String, nil]
      optional :firstname, String

      # @!attribute lastname
      #   Provider last name
      #
      #   @return [String, nil]
      optional :lastname, String

      # @!attribute npi
      #   Provider NPI number
      #
      #   @return [String, nil]
      optional :npi, String

      # @!attribute zipcode
      #   ZIP code to filter results by proximity
      #
      #   @return [String, nil]
      optional :zipcode, String

      # @!method initialize(firstname: nil, lastname: nil, npi: nil, zipcode: nil, request_options: {})
      #   @param firstname [String] Provider first name
      #
      #   @param lastname [String] Provider last name
      #
      #   @param npi [String] Provider NPI number
      #
      #   @param zipcode [String] ZIP code to filter results by proximity
      #
      #   @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
