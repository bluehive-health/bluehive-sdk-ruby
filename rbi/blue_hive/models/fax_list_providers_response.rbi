# typed: strong

module BlueHive
  module Models
    class FaxListProvidersResponse < BlueHive::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BlueHive::Models::FaxListProvidersResponse,
            BlueHive::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[BlueHive::Models::FaxListProvidersResponse::Provider])
      end
      attr_accessor :providers

      sig do
        params(
          providers:
            T::Array[
              BlueHive::Models::FaxListProvidersResponse::Provider::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(providers:)
      end

      sig do
        override.returns(
          {
            providers:
              T::Array[BlueHive::Models::FaxListProvidersResponse::Provider]
          }
        )
      end
      def to_hash
      end

      class Provider < BlueHive::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BlueHive::Models::FaxListProvidersResponse::Provider,
              BlueHive::Internal::AnyHash
            )
          end

        # Whether the provider is properly configured
        sig { returns(T::Boolean) }
        attr_accessor :configured

        # Whether this is the default provider
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # Provider name
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            configured: T::Boolean,
            is_default: T::Boolean,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the provider is properly configured
          configured:,
          # Whether this is the default provider
          is_default:,
          # Provider name
          name:
        )
        end

        sig do
          override.returns(
            { configured: T::Boolean, is_default: T::Boolean, name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
