# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "blue_hive/version"
require_relative "blue_hive/internal/util"
require_relative "blue_hive/internal/type/converter"
require_relative "blue_hive/internal/type/unknown"
require_relative "blue_hive/internal/type/boolean"
require_relative "blue_hive/internal/type/file_input"
require_relative "blue_hive/internal/type/enum"
require_relative "blue_hive/internal/type/union"
require_relative "blue_hive/internal/type/array_of"
require_relative "blue_hive/internal/type/hash_of"
require_relative "blue_hive/internal/type/base_model"
require_relative "blue_hive/internal/type/base_page"
require_relative "blue_hive/internal/type/request_parameters"
require_relative "blue_hive/internal"
require_relative "blue_hive/request_options"
require_relative "blue_hive/file_part"
require_relative "blue_hive/errors"
require_relative "blue_hive/internal/transport/base_client"
require_relative "blue_hive/internal/transport/pooled_net_requester"
require_relative "blue_hive/client"
require_relative "blue_hive/models/database_check_health_params"
require_relative "blue_hive/models/database_check_health_response"
require_relative "blue_hive/models/fax_list_providers_params"
require_relative "blue_hive/models/fax_list_providers_response"
require_relative "blue_hive/models/fax_retrieve_status_params"
require_relative "blue_hive/models/fax_retrieve_status_response"
require_relative "blue_hive/models/fax_send_params"
require_relative "blue_hive/models/fax_send_response"
require_relative "blue_hive/models/health_check_params"
require_relative "blue_hive/models/health_check_response"
require_relative "blue_hive/models/provider_lookup_params"
require_relative "blue_hive/models/provider_lookup_response"
require_relative "blue_hive/models/version_retrieve_params"
require_relative "blue_hive/models/version_retrieve_response"
require_relative "blue_hive/models"
require_relative "blue_hive/resources/database"
require_relative "blue_hive/resources/fax"
require_relative "blue_hive/resources/health"
require_relative "blue_hive/resources/providers"
require_relative "blue_hive/resources/version"
