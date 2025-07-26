# frozen_string_literal: true

module BlueHive
  module Models
    # @see BlueHive::Resources::Fax#send_
    class FaxSendParams < BlueHive::Internal::Type::BaseModel
      extend BlueHive::Internal::Type::RequestParameters::Converter
      include BlueHive::Internal::Type::RequestParameters

      # @!attribute document
      #
      #   @return [BlueHive::Models::FaxSendParams::Document]
      required :document, -> { BlueHive::FaxSendParams::Document }

      # @!attribute to
      #   Recipient fax number (E.164 format preferred)
      #
      #   @return [String]
      required :to, String

      # @!attribute from
      #   Sender fax number (optional, uses default if not provided)
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute provider
      #   Optional provider override (uses default if not specified)
      #
      #   @return [String, nil]
      optional :provider, String

      # @!attribute subject
      #   Subject line for the fax
      #
      #   @return [String, nil]
      optional :subject, String

      # @!method initialize(document:, to:, from: nil, provider: nil, subject: nil, request_options: {})
      #   @param document [BlueHive::Models::FaxSendParams::Document]
      #
      #   @param to [String] Recipient fax number (E.164 format preferred)
      #
      #   @param from [String] Sender fax number (optional, uses default if not provided)
      #
      #   @param provider [String] Optional provider override (uses default if not specified)
      #
      #   @param subject [String] Subject line for the fax
      #
      #   @param request_options [BlueHive::RequestOptions, Hash{Symbol=>Object}]

      class Document < BlueHive::Internal::Type::BaseModel
        # @!attribute content
        #   Base64 encoded document content
        #
        #   @return [String]
        required :content, String

        # @!attribute content_type
        #   MIME type of the document
        #
        #   @return [Symbol, BlueHive::Models::FaxSendParams::Document::ContentType]
        required :content_type,
                 enum: -> { BlueHive::FaxSendParams::Document::ContentType },
                 api_name: :contentType

        # @!attribute filename
        #   Optional filename for the document
        #
        #   @return [String, nil]
        optional :filename, String

        # @!method initialize(content:, content_type:, filename: nil)
        #   @param content [String] Base64 encoded document content
        #
        #   @param content_type [Symbol, BlueHive::Models::FaxSendParams::Document::ContentType] MIME type of the document
        #
        #   @param filename [String] Optional filename for the document

        # MIME type of the document
        #
        # @see BlueHive::Models::FaxSendParams::Document#content_type
        module ContentType
          extend BlueHive::Internal::Type::Enum

          APPLICATION_PDF = :"application/pdf"
          IMAGE_TIFF = :"image/tiff"
          IMAGE_TIF = :"image/tif"
          IMAGE_JPEG = :"image/jpeg"
          IMAGE_JPG = :"image/jpg"
          IMAGE_PNG = :"image/png"
          TEXT_PLAIN = :"text/plain"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
