# typed: strong

module BlueHive
  module Models
    class HealthCheckResponse < BlueHive::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BlueHive::Models::HealthCheckResponse,
            BlueHive::Internal::AnyHash
          )
        end

      sig do
        returns(BlueHive::Models::HealthCheckResponse::Status::TaggedSymbol)
      end
      attr_accessor :status

      sig do
        params(
          status: BlueHive::Models::HealthCheckResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          {
            status: BlueHive::Models::HealthCheckResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend BlueHive::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BlueHive::Models::HealthCheckResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK =
          T.let(
            :ok,
            BlueHive::Models::HealthCheckResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BlueHive::Models::HealthCheckResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
