# frozen_string_literal: true

require_relative "../test_helper"

class BlueHive::Test::Resources::ProvidersTest < BlueHive::Test::ResourceTest
  def test_lookup
    skip("skipped: tests are disabled for the time being")

    response = @blue_hive.providers.lookup

    assert_pattern do
      response => BlueHive::Models::ProviderLookupResponse
    end

    assert_pattern do
      response => {
        count: Float,
        providers: ^(BlueHive::Internal::Type::ArrayOf[BlueHive::Models::ProviderLookupResponse::Provider])
      }
    end
  end
end
