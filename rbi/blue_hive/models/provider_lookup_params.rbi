# typed: strong

module BlueHive
  module Models
    class ProviderLookupParams < BlueHive::Internal::Type::BaseModel
      extend BlueHive::Internal::Type::RequestParameters::Converter
      include BlueHive::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BlueHive::ProviderLookupParams, BlueHive::Internal::AnyHash)
        end

      # Provider first name
      sig { returns(T.nilable(String)) }
      attr_reader :firstname

      sig { params(firstname: String).void }
      attr_writer :firstname

      # Provider last name
      sig { returns(T.nilable(String)) }
      attr_reader :lastname

      sig { params(lastname: String).void }
      attr_writer :lastname

      # Provider NPI number
      sig { returns(T.nilable(String)) }
      attr_reader :npi

      sig { params(npi: String).void }
      attr_writer :npi

      # ZIP code to filter results by proximity
      sig { returns(T.nilable(String)) }
      attr_reader :zipcode

      sig { params(zipcode: String).void }
      attr_writer :zipcode

      sig do
        params(
          firstname: String,
          lastname: String,
          npi: String,
          zipcode: String,
          request_options: BlueHive::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            firstname: String,
            lastname: String,
            npi: String,
            zipcode: String,
            request_options: BlueHive::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
