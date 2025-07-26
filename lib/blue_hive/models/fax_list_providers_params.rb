# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Fax#list_providers
    class FaxListProvidersParams < BlueHive::Internal::Type::BaseModel
      extend BlueHive::Internal::Type::RequestParameters::Converter
      include BlueHive::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
