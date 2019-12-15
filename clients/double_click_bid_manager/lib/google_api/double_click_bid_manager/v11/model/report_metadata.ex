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

defmodule GoogleApi.DoubleClickBidManager.V11.Model.ReportMetadata do
  @moduledoc """
  Report metadata.

  ## Attributes

  *   `googleCloudStoragePath` (*type:* `String.t`, *default:* `nil`) - The path to the location in Google Cloud Storage where the report is stored.
  *   `reportDataEndTimeMs` (*type:* `String.t`, *default:* `nil`) - The ending time for the data that is shown in the report.
  *   `reportDataStartTimeMs` (*type:* `String.t`, *default:* `nil`) - The starting time for the data that is shown in the report.
  *   `status` (*type:* `GoogleApi.DoubleClickBidManager.V11.Model.ReportStatus.t`, *default:* `nil`) - Report status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :googleCloudStoragePath => String.t(),
          :reportDataEndTimeMs => String.t(),
          :reportDataStartTimeMs => String.t(),
          :status => GoogleApi.DoubleClickBidManager.V11.Model.ReportStatus.t()
        }

  field(:googleCloudStoragePath)
  field(:reportDataEndTimeMs)
  field(:reportDataStartTimeMs)
  field(:status, as: GoogleApi.DoubleClickBidManager.V11.Model.ReportStatus)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V11.Model.ReportMetadata do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V11.Model.ReportMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V11.Model.ReportMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end