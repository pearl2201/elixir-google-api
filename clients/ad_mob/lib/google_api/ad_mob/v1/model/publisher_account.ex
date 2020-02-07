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

defmodule GoogleApi.AdMob.V1.Model.PublisherAccount do
  @moduledoc """
  A publisher account contains information relevant to the use of this API,
  such as the time zone used for the reports.

  ## Attributes

  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - Currency code of the earning-related metrics, which is the 3-letter code
      defined in ISO 4217. The daily average rate is used for the currency
      conversion.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of this account.
      Format is accounts/{publisher_id}.
  *   `publisherId` (*type:* `String.t`, *default:* `nil`) - The unique ID by which this publisher account can be identified
      in the API requests (for example, pub-1234567890).
  *   `reportingTimeZone` (*type:* `String.t`, *default:* `nil`) - The time zone that is used in reports that are generated for this account.
      The value is a time-zone ID as specified by the CLDR project,
      for example, "America/Los_Angeles".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currencyCode => String.t(),
          :name => String.t(),
          :publisherId => String.t(),
          :reportingTimeZone => String.t()
        }

  field(:currencyCode)
  field(:name)
  field(:publisherId)
  field(:reportingTimeZone)
end

defimpl Poison.Decoder, for: GoogleApi.AdMob.V1.Model.PublisherAccount do
  def decode(value, options) do
    GoogleApi.AdMob.V1.Model.PublisherAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdMob.V1.Model.PublisherAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end