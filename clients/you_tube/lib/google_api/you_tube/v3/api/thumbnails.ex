# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.YouTube.V3.Api.Thumbnails do
  @moduledoc """
  API calls for all endpoints tagged `Thumbnails`.
  """

  alias GoogleApi.YouTube.V3.Connection
  import GoogleApi.YouTube.V3.RequestBuilder

  @doc """
  Uploads a custom video thumbnail to YouTube and sets it for a video.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - video_id (String.t): The videoId parameter specifies a YouTube video ID for which the custom video thumbnail is being provided.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.  The onBehalfOfContentOwner parameter indicates that the request&#39;s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.ThumbnailSetResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_thumbnails_set(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.YouTube.V3.Model.ThumbnailSetResponse.t()} | {:error, Tesla.Env.t()}
  def youtube_thumbnails_set(connection, video_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query
    }

    %{}
    |> method(:post)
    |> url("/youtube/v3/thumbnails/set")
    |> add_param(:query, :videoId, video_id)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.YouTube.V3.Model.ThumbnailSetResponse{})
  end

  @doc """
  Uploads a custom video thumbnail to YouTube and sets it for a video.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - video_id (String.t): The videoId parameter specifies a YouTube video ID for which the custom video thumbnail is being provided.
  - upload_type (String.t): Upload type. Must be \&quot;resumable\&quot;.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.  The onBehalfOfContentOwner parameter indicates that the request&#39;s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec youtube_thumbnails_set_resumable(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def youtube_thumbnails_set_resumable(connection, video_id, upload_type, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query
    }

    %{}
    |> method(:post)
    |> url("/resumable/upload/youtube/v3/thumbnails/set")
    |> add_param(:query, :videoId, video_id)
    |> add_param(:query, :uploadType, upload_type)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Uploads a custom video thumbnail to YouTube and sets it for a video.

  ## Parameters

  - connection (GoogleApi.YouTube.V3.Connection): Connection to server
  - video_id (String.t): The videoId parameter specifies a YouTube video ID for which the custom video thumbnail is being provided.
  - upload_type (String.t): Upload type. Must be \&quot;multipart\&quot;.
  - data (String.t): The file to upload.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :onBehalfOfContentOwner (String.t): Note: This parameter is intended exclusively for YouTube content partners.  The onBehalfOfContentOwner parameter indicates that the request&#39;s authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.

  ## Returns

  {:ok, %GoogleApi.YouTube.V3.Model.ThumbnailSetResponse{}} on success
  {:error, info} on failure
  """
  @spec youtube_thumbnails_set_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, GoogleApi.YouTube.V3.Model.ThumbnailSetResponse.t()} | {:error, Tesla.Env.t()}
  def youtube_thumbnails_set_simple(connection, video_id, upload_type, data, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :onBehalfOfContentOwner => :query
    }

    %{}
    |> method(:post)
    |> url("/upload/youtube/v3/thumbnails/set")
    |> add_param(:query, :videoId, video_id)
    |> add_param(:query, :uploadType, upload_type)
    |> add_param(:file, :data, data)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.YouTube.V3.Model.ThumbnailSetResponse{})
  end
end
