# typed: strong

module BlueHive
  module Models
    class ProviderLookupResponse < BlueHive::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BlueHive::Models::ProviderLookupResponse,
            BlueHive::Internal::AnyHash
          )
        end

      # Number of providers found
      sig { returns(Float) }
      attr_accessor :count

      # List of matching providers
      sig do
        returns(T::Array[BlueHive::Models::ProviderLookupResponse::Provider])
      end
      attr_accessor :providers

      sig do
        params(
          count: Float,
          providers:
            T::Array[BlueHive::Models::ProviderLookupResponse::Provider::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of providers found
        count:,
        # List of matching providers
        providers:
      )
      end

      sig do
        override.returns(
          {
            count: Float,
            providers:
              T::Array[BlueHive::Models::ProviderLookupResponse::Provider]
          }
        )
      end
      def to_hash
      end

      class Provider < BlueHive::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BlueHive::Models::ProviderLookupResponse::Provider,
              BlueHive::Internal::AnyHash
            )
          end

        # Primary address line
        sig { returns(String) }
        attr_accessor :address_1

        # Secondary address line (suite, unit, etc.)
        sig { returns(String) }
        attr_accessor :address_2

        # City
        sig { returns(String) }
        attr_accessor :city

        # Country code
        sig { returns(String) }
        attr_accessor :country

        # Distance in miles from the provided ZIP code
        sig { returns(Float) }
        attr_accessor :distance

        # Fax number
        sig { returns(String) }
        attr_accessor :fax_number

        # Provider first name
        sig { returns(String) }
        attr_accessor :firstname

        # Provider last name or organization name
        sig { returns(String) }
        attr_accessor :lastname

        # National Provider Identifier (NPI) number
        sig { returns(String) }
        attr_accessor :npi

        # Postal/ZIP code
        sig { returns(String) }
        attr_accessor :postal_code

        # State or province code
        sig { returns(String) }
        attr_accessor :state_province

        # Work phone number
        sig { returns(String) }
        attr_accessor :work_phone

        sig do
          params(
            address_1: String,
            address_2: String,
            city: String,
            country: String,
            distance: Float,
            fax_number: String,
            firstname: String,
            lastname: String,
            npi: String,
            postal_code: String,
            state_province: String,
            work_phone: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Primary address line
          address_1:,
          # Secondary address line (suite, unit, etc.)
          address_2:,
          # City
          city:,
          # Country code
          country:,
          # Distance in miles from the provided ZIP code
          distance:,
          # Fax number
          fax_number:,
          # Provider first name
          firstname:,
          # Provider last name or organization name
          lastname:,
          # National Provider Identifier (NPI) number
          npi:,
          # Postal/ZIP code
          postal_code:,
          # State or province code
          state_province:,
          # Work phone number
          work_phone:
        )
        end

        sig do
          override.returns(
            {
              address_1: String,
              address_2: String,
              city: String,
              country: String,
              distance: Float,
              fax_number: String,
              firstname: String,
              lastname: String,
              npi: String,
              postal_code: String,
              state_province: String,
              work_phone: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
