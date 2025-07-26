# typed: strong

module BlueHive
  module Models
    class FaxSendParams < BlueHive::Internal::Type::BaseModel
      extend BlueHive::Internal::Type::RequestParameters::Converter
      include BlueHive::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BlueHive::FaxSendParams, BlueHive::Internal::AnyHash)
        end

      sig { returns(BlueHive::FaxSendParams::Document) }
      attr_reader :document

      sig { params(document: BlueHive::FaxSendParams::Document::OrHash).void }
      attr_writer :document

      # Recipient fax number (E.164 format preferred)
      sig { returns(String) }
      attr_accessor :to

      # Sender fax number (optional, uses default if not provided)
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # Optional provider override (uses default if not specified)
      sig { returns(T.nilable(String)) }
      attr_reader :provider

      sig { params(provider: String).void }
      attr_writer :provider

      # Subject line for the fax
      sig { returns(T.nilable(String)) }
      attr_reader :subject

      sig { params(subject: String).void }
      attr_writer :subject

      sig do
        params(
          document: BlueHive::FaxSendParams::Document::OrHash,
          to: String,
          from: String,
          provider: String,
          subject: String,
          request_options: BlueHive::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        document:,
        # Recipient fax number (E.164 format preferred)
        to:,
        # Sender fax number (optional, uses default if not provided)
        from: nil,
        # Optional provider override (uses default if not specified)
        provider: nil,
        # Subject line for the fax
        subject: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            document: BlueHive::FaxSendParams::Document,
            to: String,
            from: String,
            provider: String,
            subject: String,
            request_options: BlueHive::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Document < BlueHive::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BlueHive::FaxSendParams::Document,
              BlueHive::Internal::AnyHash
            )
          end

        # Base64 encoded document content
        sig { returns(String) }
        attr_accessor :content

        # MIME type of the document
        sig do
          returns(BlueHive::FaxSendParams::Document::ContentType::OrSymbol)
        end
        attr_accessor :content_type

        # Optional filename for the document
        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        sig do
          params(
            content: String,
            content_type:
              BlueHive::FaxSendParams::Document::ContentType::OrSymbol,
            filename: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Base64 encoded document content
          content:,
          # MIME type of the document
          content_type:,
          # Optional filename for the document
          filename: nil
        )
        end

        sig do
          override.returns(
            {
              content: String,
              content_type:
                BlueHive::FaxSendParams::Document::ContentType::OrSymbol,
              filename: String
            }
          )
        end
        def to_hash
        end

        # MIME type of the document
        module ContentType
          extend BlueHive::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, BlueHive::FaxSendParams::Document::ContentType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLICATION_PDF =
            T.let(
              :"application/pdf",
              BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
            )
          IMAGE_TIFF =
            T.let(
              :"image/tiff",
              BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
            )
          IMAGE_TIF =
            T.let(
              :"image/tif",
              BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
            )
          IMAGE_JPEG =
            T.let(
              :"image/jpeg",
              BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
            )
          IMAGE_JPG =
            T.let(
              :"image/jpg",
              BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
            )
          IMAGE_PNG =
            T.let(
              :"image/png",
              BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
            )
          TEXT_PLAIN =
            T.let(
              :"text/plain",
              BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BlueHive::FaxSendParams::Document::ContentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
