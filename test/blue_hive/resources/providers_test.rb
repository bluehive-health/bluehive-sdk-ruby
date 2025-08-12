# frozen_string_literal: true

require_relative "../test_helper"

class BlueHive::Test::Resources::ProvidersTest < BlueHive::Test::ResourceTest
  def test_lookup
    skip("Prism tests are disabled")

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
