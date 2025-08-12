# frozen_string_literal: true

require_relative "../test_helper"

class BlueHive::Test::Resources::DatabaseTest < BlueHive::Test::ResourceTest
  def test_check_health
    skip("Prism tests are disabled")

    response = @blue_hive.database.check_health

    assert_pattern do
      response => BlueHive::Models::DatabaseCheckHealthResponse
    end

    assert_pattern do
      response => {
        status: BlueHive::Models::DatabaseCheckHealthResponse::Status,
        timestamp: String,
        database: String | nil,
        error: String | nil,
        stats: BlueHive::Models::DatabaseCheckHealthResponse::Stats | nil
      }
    end
  end
end
