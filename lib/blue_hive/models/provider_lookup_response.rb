# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Providers#lookup
    class ProviderLookupResponse < BlueHive::Internal::Type::BaseModel
      # @!attribute count
      #   Number of providers found
      #
      #   @return [Float]
      required :count, Float

      # @!attribute providers
      #   List of matching providers
      #
      #   @return [Array<BlueHive::Models::ProviderLookupResponse::Provider>]
      required :providers,
               -> { BlueHive::Internal::Type::ArrayOf[BlueHive::Models::ProviderLookupResponse::Provider] }

      # @!method initialize(count:, providers:)
      #   @param count [Float] Number of providers found
      #
      #   @param providers [Array<BlueHive::Models::ProviderLookupResponse::Provider>] List of matching providers

      class Provider < BlueHive::Internal::Type::BaseModel
        # @!attribute address_1
        #   Primary address line
        #
        #   @return [String]
        required :address_1, String

        # @!attribute address_2
        #   Secondary address line (suite, unit, etc.)
        #
        #   @return [String]
        required :address_2, String

        # @!attribute city
        #   City
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #   Country code
        #
        #   @return [String]
        required :country, String

        # @!attribute distance
        #   Distance in miles from the provided ZIP code
        #
        #   @return [Float]
        required :distance, Float

        # @!attribute fax_number
        #   Fax number
        #
        #   @return [String]
        required :fax_number, String

        # @!attribute firstname
        #   Provider first name
        #
        #   @return [String]
        required :firstname, String

        # @!attribute lastname
        #   Provider last name or organization name
        #
        #   @return [String]
        required :lastname, String

        # @!attribute npi
        #   National Provider Identifier (NPI) number
        #
        #   @return [String]
        required :npi, String

        # @!attribute postal_code
        #   Postal/ZIP code
        #
        #   @return [String]
        required :postal_code, String

        # @!attribute state_province
        #   State or province code
        #
        #   @return [String]
        required :state_province, String

        # @!attribute work_phone
        #   Work phone number
        #
        #   @return [String]
        required :work_phone, String

        # @!method initialize(address_1:, address_2:, city:, country:, distance:, fax_number:, firstname:, lastname:, npi:, postal_code:, state_province:, work_phone:)
        #   @param address_1 [String] Primary address line
        #
        #   @param address_2 [String] Secondary address line (suite, unit, etc.)
        #
        #   @param city [String] City
        #
        #   @param country [String] Country code
        #
        #   @param distance [Float] Distance in miles from the provided ZIP code
        #
        #   @param fax_number [String] Fax number
        #
        #   @param firstname [String] Provider first name
        #
        #   @param lastname [String] Provider last name or organization name
        #
        #   @param npi [String] National Provider Identifier (NPI) number
        #
        #   @param postal_code [String] Postal/ZIP code
        #
        #   @param state_province [String] State or province code
        #
        #   @param work_phone [String] Work phone number
      end
    end
  end
end
