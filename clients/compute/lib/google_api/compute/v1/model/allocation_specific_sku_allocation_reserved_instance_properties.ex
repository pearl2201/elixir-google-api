# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationReservedInstanceProperties do
  @moduledoc """
  Properties of the SKU instances being reserved.

  ## Attributes

  *   `guestAccelerators` (*type:* `list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t)`, *default:* `nil`) - Specifies accelerator type and count.
  *   `localSsds` (*type:* `list(GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk.t)`, *default:* `nil`) - Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Minimum cpu platform the reservation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :guestAccelerators => list(GoogleApi.Compute.V1.Model.AcceleratorConfig.t()),
          :localSsds =>
            list(
              GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk.t()
            ),
          :machineType => String.t(),
          :minCpuPlatform => String.t()
        }

  field(:guestAccelerators, as: GoogleApi.Compute.V1.Model.AcceleratorConfig, type: :list)

  field(
    :localSsds,
    as:
      GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk,
    type: :list
  )

  field(:machineType)
  field(:minCpuPlatform)
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationReservedInstanceProperties do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationReservedInstanceProperties.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.AllocationSpecificSKUAllocationReservedInstanceProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end