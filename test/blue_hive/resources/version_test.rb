# frozen_string_literal: true

require_relative "../test_helper"

class BlueHive::Test::Resources::VersionTest < BlueHive::Test::ResourceTest
  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @blue_hive.version.retrieve

    assert_pattern do
      response => BlueHive::Models::VersionRetrieveResponse
    end

    assert_pattern do
      response => {
        version: String
      }
    end
  end
end
