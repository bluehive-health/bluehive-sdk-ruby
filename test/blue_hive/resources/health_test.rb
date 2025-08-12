# frozen_string_literal: true

require_relative "../test_helper"

class BlueHive::Test::Resources::HealthTest < BlueHive::Test::ResourceTest
  def test_check
    skip("Prism tests are disabled")

    response = @blue_hive.health.check

    assert_pattern do
      response => BlueHive::Models::HealthCheckResponse
    end

    assert_pattern do
      response => {
        status: BlueHive::Models::HealthCheckResponse::Status
      }
    end
  end
end
