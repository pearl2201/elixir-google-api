# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Logging.V2.Api.V2 do
  @moduledoc """
  API calls for all endpoints tagged `V2`.
  """

  alias GoogleApi.Logging.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets the Logs Router CMEK settings for the given resource.Note: CMEK for the Logs Router can currently only be configured for GCP organizations. Once configured, it applies to all projects and folders in the GCP organization.See Enabling CMEK for Logs Router for more information.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Logging.V2.Connection.t`) - Connection to server
  *   `v2_id` (*type:* `String.t`) - Part of `name`. Required. The resource for which to retrieve CMEK settings.
      "projects/[PROJECT_ID]/cmekSettings"
      "organizations/[ORGANIZATION_ID]/cmekSettings"
      "billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings"
      "folders/[FOLDER_ID]/cmekSettings"
      Example: "organizations/12345/cmekSettings".Note: CMEK for the Logs Router can currently only be configured for GCP organizations. Once configured, it applies to all projects and folders in the GCP organization.
  *   `v2_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Logging.V2.Model.CmekSettings{}}` on success
  *   `{:error, info}` on failure
  """
  @spec logging_get_cmek_settings(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Logging.V2.Model.CmekSettings.t()} | {:error, Tesla.Env.t()}
  def logging_get_cmek_settings(connection, v2_id, v2_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{v2Id}/{v2Id1}/cmekSettings", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.CmekSettings{}])
  end

  @doc """
  Updates the Logs Router CMEK settings for the given resource.Note: CMEK for the Logs Router can currently only be configured for GCP organizations. Once configured, it applies to all projects and folders in the GCP organization.UpdateCmekSettings will fail if 1) kms_key_name is invalid, or 2) the associated service account does not have the required roles/cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key, or 3) access to the key is disabled.See Enabling CMEK for Logs Router for more information.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Logging.V2.Connection.t`) - Connection to server
  *   `v2_id` (*type:* `String.t`) - Part of `name`. Required. The resource name for the CMEK settings to update.
      "projects/[PROJECT_ID]/cmekSettings"
      "organizations/[ORGANIZATION_ID]/cmekSettings"
      "billingAccounts/[BILLING_ACCOUNT_ID]/cmekSettings"
      "folders/[FOLDER_ID]/cmekSettings"
      Example: "organizations/12345/cmekSettings".Note: CMEK for the Logs Router can currently only be configured for GCP organizations. Once configured, it applies to all projects and folders in the GCP organization.
  *   `v2_id1` (*type:* `String.t`) - Part of `name`. See documentation of `v2Id`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - Optional. Field mask identifying which fields from cmek_settings should be updated. A field will be overwritten if and only if it is in the update mask. Output only fields cannot be updated.See FieldMask for more information.Example: "updateMask=kmsKeyName"
      *   `:body` (*type:* `GoogleApi.Logging.V2.Model.CmekSettings.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Logging.V2.Model.CmekSettings{}}` on success
  *   `{:error, info}` on failure
  """
  @spec logging_update_cmek_settings(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Logging.V2.Model.CmekSettings.t()} | {:error, Tesla.Env.t()}
  def logging_update_cmek_settings(connection, v2_id, v2_id1, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v2/{v2Id}/{v2Id1}/cmekSettings", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.CmekSettings{}])
  end
end