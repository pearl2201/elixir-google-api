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

defmodule GoogleApi.AndroidPublisher.V3.Api.Systemapks do
  @moduledoc """
  API calls for all endpoints tagged `Systemapks`.
  """

  alias GoogleApi.AndroidPublisher.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Creates a new variant of APK which is suitable for inclusion in a system image.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app; for example, "com.spiffygame".
  *   `version_code` (*type:* `String.t`) - The version code of the App Bundle.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SystemApkVariantsCreateRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.Variant{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_systemapks_variants_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.Variant.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_systemapks_variants_create(
        connection,
        package_name,
        version_code,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "versionCode" => URI.encode(version_code, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.Variant{}])
  end

  @doc """
  Download a previously created APK which is suitable for inclusion in a system image.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app; for example, "com.spiffygame".
  *   `version_code` (*type:* `String.t`) - The version code of the App Bundle.
  *   `variant_id` (*type:* `integer()`) - 
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_systemapks_variants_download(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, Tesla.Env.t()}
  def androidpublisher_systemapks_variants_download(
        connection,
        package_name,
        version_code,
        variant_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}:download",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "versionCode" => URI.encode(version_code, &URI.char_unreserved?/1),
          "variantId" => variant_id
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns a previously created system APK variant.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app; for example, "com.spiffygame".
  *   `version_code` (*type:* `String.t`) - The version code of the App Bundle.
  *   `variant_id` (*type:* `integer()`) - Unique identifier for this variant.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.Variant{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_systemapks_variants_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.Variant.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_systemapks_variants_get(
        connection,
        package_name,
        version_code,
        variant_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "versionCode" => URI.encode(version_code, &URI.char_unreserved?/1),
          "variantId" => variant_id
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.Variant{}])
  end

  @doc """
  Returns the list of previously created system APK variants.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V3.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app; for example, "com.spiffygame".
  *   `version_code` (*type:* `String.t`) - The version code of the App Bundle.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V3.Model.SystemApkVariantsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_systemapks_variants_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V3.Model.SystemApkVariantsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_systemapks_variants_list(
        connection,
        package_name,
        version_code,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "versionCode" => URI.encode(version_code, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V3.Model.SystemApkVariantsListResponse{}]
    )
  end
end
