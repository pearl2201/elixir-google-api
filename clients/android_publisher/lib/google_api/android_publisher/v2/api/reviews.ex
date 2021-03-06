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

defmodule GoogleApi.AndroidPublisher.V2.Api.Reviews do
  @moduledoc """
  API calls for all endpoints tagged `Reviews`.
  """

  alias GoogleApi.AndroidPublisher.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Returns a single review.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V2.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app for which we want reviews; for example, "com.spiffygame".
  *   `review_id` (*type:* `String.t`) - 
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:translationLanguage` (*type:* `String.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V2.Model.Review{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_reviews_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V2.Model.Review.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_reviews_get(
        connection,
        package_name,
        review_id,
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
      :translationLanguage => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/androidpublisher/v2/applications/{packageName}/reviews/{reviewId}", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
        "reviewId" => URI.encode(review_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AndroidPublisher.V2.Model.Review{}])
  end

  @doc """
  Returns a list of reviews. Only reviews from last week will be returned.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V2.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app for which we want reviews; for example, "com.spiffygame".
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - 
      *   `:startIndex` (*type:* `integer()`) - 
      *   `:token` (*type:* `String.t`) - 
      *   `:translationLanguage` (*type:* `String.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V2.Model.ReviewsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_reviews_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.AndroidPublisher.V2.Model.ReviewsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_reviews_list(connection, package_name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :startIndex => :query,
      :token => :query,
      :translationLanguage => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/androidpublisher/v2/applications/{packageName}/reviews", %{
        "packageName" => URI.encode(package_name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V2.Model.ReviewsListResponse{}]
    )
  end

  @doc """
  Reply to a single review, or update an existing reply.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AndroidPublisher.V2.Connection.t`) - Connection to server
  *   `package_name` (*type:* `String.t`) - Unique identifier for the Android app for which we want reviews; for example, "com.spiffygame".
  *   `review_id` (*type:* `String.t`) - 
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AndroidPublisher.V2.Model.ReviewsReplyRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AndroidPublisher.V2.Model.ReviewsReplyResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec androidpublisher_reviews_reply(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AndroidPublisher.V2.Model.ReviewsReplyResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def androidpublisher_reviews_reply(
        connection,
        package_name,
        review_id,
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
        "/androidpublisher/v2/applications/{packageName}/reviews/{reviewId}:reply",
        %{
          "packageName" => URI.encode(package_name, &URI.char_unreserved?/1),
          "reviewId" => URI.encode(review_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AndroidPublisher.V2.Model.ReviewsReplyResponse{}]
    )
  end
end
