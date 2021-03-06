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

defmodule GoogleApi.CloudAsset.V1.Model.Feed do
  @moduledoc """
  An asset feed used to export asset updates to a destinations.
  An asset feed filter controls what updates are exported.
  The asset feed must be created within a project, organization, or
  folder. Supported destinations are:
  Cloud Pub/Sub topics.

  ## Attributes

  *   `assetNames` (*type:* `list(String.t)`, *default:* `nil`) - A list of the full names of the assets to receive updates. You must specify
      either or both of asset_names and asset_types. Only asset updates matching
      specified asset_names and asset_types are exported to the feed. For
      example:
      `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`.
      See [Resource
      Names](https://cloud.google.com/apis/design/resource_names#full_resource_name)
      for more info.
  *   `assetTypes` (*type:* `list(String.t)`, *default:* `nil`) - A list of types of the assets to receive updates. You must specify either
      or both of asset_names and asset_types. Only asset updates matching
      specified asset_names and asset_types are exported to the feed.
      For example: `"compute.googleapis.com/Disk"`

      See [this
      topic](https://cloud.google.com/asset-inventory/docs/supported-asset-types)
      for a list of all supported asset types.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - Asset content type. If not specified, no content but the asset name and
      type will be returned.
  *   `feedOutputConfig` (*type:* `GoogleApi.CloudAsset.V1.Model.FeedOutputConfig.t`, *default:* `nil`) - Required. Feed output configuration defining where the asset updates are
      published to.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The format will be
      projects/{project_number}/feeds/{client-assigned_feed_identifier} or
      folders/{folder_number}/feeds/{client-assigned_feed_identifier} or
      organizations/{organization_number}/feeds/{client-assigned_feed_identifier}

      The client-assigned feed identifier must be unique within the parent
      project/folder/organization.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetNames => list(String.t()),
          :assetTypes => list(String.t()),
          :contentType => String.t(),
          :feedOutputConfig => GoogleApi.CloudAsset.V1.Model.FeedOutputConfig.t(),
          :name => String.t()
        }

  field(:assetNames, type: :list)
  field(:assetTypes, type: :list)
  field(:contentType)
  field(:feedOutputConfig, as: GoogleApi.CloudAsset.V1.Model.FeedOutputConfig)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.Feed do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.Feed.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.Feed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
