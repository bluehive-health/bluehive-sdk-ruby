# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Fax#list_providers
    class FaxListProvidersResponse < BlueHive::Internal::Type::BaseModel
      # @!attribute providers
      #
      #   @return [Array<BlueHive::Models::FaxListProvidersResponse::Provider>]
      required :providers,
               -> { BlueHive::Internal::Type::ArrayOf[BlueHive::Models::FaxListProvidersResponse::Provider] }

      # @!method initialize(providers:)
      #   @param providers [Array<BlueHive::Models::FaxListProvidersResponse::Provider>]

      class Provider < BlueHive::Internal::Type::BaseModel
        # @!attribute configured
        #   Whether the provider is properly configured
        #
        #   @return [Boolean]
        required :configured, BlueHive::Internal::Type::Boolean

        # @!attribute is_default
        #   Whether this is the default provider
        #
        #   @return [Boolean]
        required :is_default, BlueHive::Internal::Type::Boolean, api_name: :isDefault

        # @!attribute name
        #   Provider name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(configured:, is_default:, name:)
        #   @param configured [Boolean] Whether the provider is properly configured
        #
        #   @param is_default [Boolean] Whether this is the default provider
        #
        #   @param name [String] Provider name
      end
    end
  end
end
