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

defmodule GoogleApi.Monitoring.V3.Model.Condition do
  @moduledoc """
  A condition is a true/false test that determines when an alerting policy should open an incident. If a condition evaluates to true, it signifies that something is wrong.

  ## Attributes

  *   `conditionAbsent` (*type:* `GoogleApi.Monitoring.V3.Model.MetricAbsence.t`, *default:* `nil`) - A condition that checks that a time series continues to receive new data points.
  *   `conditionThreshold` (*type:* `GoogleApi.Monitoring.V3.Model.MetricThreshold.t`, *default:* `nil`) - A condition that compares a time series against a threshold.
  *   `conditionTimeSeriesQueryLanguage` (*type:* `GoogleApi.Monitoring.V3.Model.TimeSeriesQueryLanguageCondition.t`, *default:* `nil`) - A condition that uses the time series query language format to define alerts. If set, no other conditions can be present.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A short name or phrase used to identify the condition in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple conditions in the same policy.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required if the condition exists. The unique resource name for this condition. Its format is:
      projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[POLICY_ID]/conditions/[CONDITION_ID]
      [CONDITION_ID] is assigned by Stackdriver Monitoring when the condition is created as part of a new or updated alerting policy.When calling the alertPolicies.create method, do not include the name field in the conditions of the requested alerting policy. Stackdriver Monitoring creates the condition identifiers and includes them in the new policy.When calling the alertPolicies.update method to update a policy, including a condition name causes the existing condition to be updated. Conditions without names are added to the updated policy. Existing conditions are deleted if they are not updated.Best practice is to preserve [CONDITION_ID] if you make only small changes, such as those to condition thresholds, durations, or trigger values. Otherwise, treat the change as a new condition and let the existing condition be deleted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditionAbsent => GoogleApi.Monitoring.V3.Model.MetricAbsence.t(),
          :conditionThreshold => GoogleApi.Monitoring.V3.Model.MetricThreshold.t(),
          :conditionTimeSeriesQueryLanguage =>
            GoogleApi.Monitoring.V3.Model.TimeSeriesQueryLanguageCondition.t(),
          :displayName => String.t(),
          :name => String.t()
        }

  field(:conditionAbsent, as: GoogleApi.Monitoring.V3.Model.MetricAbsence)
  field(:conditionThreshold, as: GoogleApi.Monitoring.V3.Model.MetricThreshold)

  field(:conditionTimeSeriesQueryLanguage,
    as: GoogleApi.Monitoring.V3.Model.TimeSeriesQueryLanguageCondition
  )

  field(:displayName)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Condition do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Condition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Condition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
