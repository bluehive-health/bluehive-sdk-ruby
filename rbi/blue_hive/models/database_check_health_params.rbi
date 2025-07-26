# typed: strong

module BlueHive
  module Models
    class DatabaseCheckHealthParams < BlueHive::Internal::Type::BaseModel
      extend BlueHive::Internal::Type::RequestParameters::Converter
      include BlueHive::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BlueHive::DatabaseCheckHealthParams,
            BlueHive::Internal::AnyHash
          )
        end

      sig do
        params(request_options: BlueHive::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: BlueHive::RequestOptions }) }
      def to_hash
      end
    end
  end
end
