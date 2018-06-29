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

defmodule GoogleApi.AppsActivity.V1.Model.PermissionChange do
  @moduledoc """
  Contains information about a Drive object&#39;s permissions that changed as a result of a permissionChange type event.

  ## Attributes

  - addedPermissions ([Permission]): Lists all Permission objects added. Defaults to: `null`.
  - removedPermissions ([Permission]): Lists all Permission objects removed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addedPermissions => list(GoogleApi.AppsActivity.V1.Model.Permission.t()),
          :removedPermissions => list(GoogleApi.AppsActivity.V1.Model.Permission.t())
        }

  field(:addedPermissions, as: GoogleApi.AppsActivity.V1.Model.Permission, type: :list)
  field(:removedPermissions, as: GoogleApi.AppsActivity.V1.Model.Permission, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AppsActivity.V1.Model.PermissionChange do
  def decode(value, options) do
    GoogleApi.AppsActivity.V1.Model.PermissionChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppsActivity.V1.Model.PermissionChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
