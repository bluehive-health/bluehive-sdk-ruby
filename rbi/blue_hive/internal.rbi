# typed: strong

module BlueHive
  module Internal
    extend BlueHive::Internal::Util::SorbetRuntimeSupport

    # Due to the current WIP status of Shapes support in Sorbet, types referencing
    # this alias might be refined in the future.
    AnyHash = T.type_alias { T::Hash[Symbol, T.anything] }

    FileInput =
      T.type_alias { T.any(Pathname, StringIO, IO, String, BlueHive::FilePart) }

    OMIT = T.let(Object.new.freeze, T.anything)
  end
end
