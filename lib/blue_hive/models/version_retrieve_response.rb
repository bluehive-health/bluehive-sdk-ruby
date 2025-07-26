# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Version#retrieve
    class VersionRetrieveResponse < BlueHive::Internal::Type::BaseModel
      # @!attribute version
      #
      #   @return [String]
      required :version, String

      # @!method initialize(version:)
      #   @param version [String]
    end
  end
end
