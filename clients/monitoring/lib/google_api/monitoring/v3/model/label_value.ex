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

defmodule GoogleApi.Monitoring.V3.Model.LabelValue do
  @moduledoc """
  A label value.

  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - A bool label value.
  *   `int64Value` (*type:* `String.t`, *default:* `nil`) - An int64 label value.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - A string label value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean(),
          :int64Value => String.t(),
          :stringValue => String.t()
        }

  field(:boolValue)
  field(:int64Value)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.LabelValue do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.LabelValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.LabelValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
