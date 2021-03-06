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

defmodule GoogleApi.TagManager.V2.Model.QuickPreviewResponse do
  @moduledoc """
  Response to quick previewing a workspace.

  ## Attributes

  *   `compilerError` (*type:* `boolean()`, *default:* `nil`) - Were there compiler errors or not.
  *   `containerVersion` (*type:* `GoogleApi.TagManager.V2.Model.ContainerVersion.t`, *default:* `nil`) - The quick previewed container version.
  *   `syncStatus` (*type:* `GoogleApi.TagManager.V2.Model.SyncStatus.t`, *default:* `nil`) - Whether quick previewing failed when syncing the workspace to the latest
      container version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compilerError => boolean(),
          :containerVersion => GoogleApi.TagManager.V2.Model.ContainerVersion.t(),
          :syncStatus => GoogleApi.TagManager.V2.Model.SyncStatus.t()
        }

  field(:compilerError)
  field(:containerVersion, as: GoogleApi.TagManager.V2.Model.ContainerVersion)
  field(:syncStatus, as: GoogleApi.TagManager.V2.Model.SyncStatus)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.QuickPreviewResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.QuickPreviewResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.QuickPreviewResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
