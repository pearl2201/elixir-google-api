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

defmodule GoogleApi.Spanner.V1.Model.ChildLink do
  @moduledoc """
  Metadata associated with a parent-child relationship appearing in a
  PlanNode.

  ## Attributes

  *   `childIndex` (*type:* `integer()`, *default:* `nil`) - The node to which the link points.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the link. For example, in Hash Joins this could be used to
      distinguish between the build child and the probe child, or in the case
      of the child being an output variable, to represent the tag associated
      with the output variable.
  *   `variable` (*type:* `String.t`, *default:* `nil`) - Only present if the child node is SCALAR and corresponds
      to an output variable of the parent node. The field carries the name of
      the output variable.
      For example, a `TableScan` operator that reads rows from a table will
      have child links to the `SCALAR` nodes representing the output variables
      created for each column that is read by the operator. The corresponding
      `variable` fields will be set to the variable names assigned to the
      columns.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :childIndex => integer(),
          :type => String.t(),
          :variable => String.t()
        }

  field(:childIndex)
  field(:type)
  field(:variable)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ChildLink do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ChildLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ChildLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
