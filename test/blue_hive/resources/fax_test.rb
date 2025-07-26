# frozen_string_literal: true

require_relative "../test_helper"

class BlueHive::Test::Resources::FaxTest < BlueHive::Test::ResourceTest
  def test_list_providers
    skip("skipped: tests are disabled for the time being")

    response = @blue_hive.fax.list_providers

    assert_pattern do
      response => BlueHive::Models::FaxListProvidersResponse
    end

    assert_pattern do
      response => {
        providers: ^(BlueHive::Internal::Type::ArrayOf[BlueHive::Models::FaxListProvidersResponse::Provider])
      }
    end
  end

  def test_retrieve_status
    skip("skipped: tests are disabled for the time being")

    response = @blue_hive.fax.retrieve_status("id")

    assert_pattern do
      response => BlueHive::Models::FaxRetrieveStatusResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        from: String,
        provider: String,
        status: BlueHive::Models::FaxRetrieveStatusResponse::Status,
        to: String,
        updated_at: String,
        cost: Float | nil,
        delivered_at: String | nil,
        duration: Float | nil,
        error_message: String | nil,
        page_count: Float | nil,
        provider_data: BlueHive::Internal::Type::Unknown | nil
      }
    end
  end

  def test_send__required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @blue_hive.fax.send_(document: {content: "content", contentType: :"application/pdf"}, to: "to")

    assert_pattern do
      response => BlueHive::Models::FaxSendResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: String,
        from: String,
        provider: String,
        status: BlueHive::Models::FaxSendResponse::Status,
        to: String,
        estimated_delivery: String | nil
      }
    end
  end
end
