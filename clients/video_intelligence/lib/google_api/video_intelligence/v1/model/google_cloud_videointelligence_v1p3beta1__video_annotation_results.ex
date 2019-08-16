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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults do
  @moduledoc """
  Annotation results for a single video.

  ## Attributes

  *   `error` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleRpc_Status.t`, *default:* `nil`) - If set, indicates an error. Note that for a single `AnnotateVideoRequest`
      some videos may succeed and some may fail.
  *   `explicitAnnotation` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation.t`, *default:* `nil`) - Explicit content annotation.
  *   `frameLabelAnnotations` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation.t)`, *default:* `nil`) - Label annotations on frame level.
      There is exactly one element for each unique label.
  *   `inputUri` (*type:* `String.t`, *default:* `nil`) - Video file location in
      [Google Cloud Storage](https://cloud.google.com/storage/).
  *   `logoRecognitionAnnotations` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation.t)`, *default:* `nil`) - Annotations for list of logos detected, tracked and recognized in video.
  *   `objectAnnotations` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation.t)`, *default:* `nil`) - Annotations for list of objects detected and tracked in video.
  *   `segment` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoSegment.t`, *default:* `nil`) - Video segment on which the annotation is run.
  *   `segmentLabelAnnotations` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation.t)`, *default:* `nil`) - Topical label annotations on video level or user specified segment level.
      There is exactly one element for each unique label.
  *   `shotAnnotations` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoSegment.t)`, *default:* `nil`) - Shot annotations. Each shot is represented as a video segment.
  *   `shotLabelAnnotations` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation.t)`, *default:* `nil`) - Topical label annotations on shot level.
      There is exactly one element for each unique label.
  *   `speechTranscriptions` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription.t)`, *default:* `nil`) - Speech transcription.
  *   `textAnnotations` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_TextAnnotation.t)`, *default:* `nil`) - OCR text detection and tracking.
      Annotations for list of detected text snippets. Each will have list of
      frame information associated with it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.VideoIntelligence.V1.Model.GoogleRpc_Status.t(),
          :explicitAnnotation =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation.t(),
          :frameLabelAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation.t()
            ),
          :inputUri => String.t(),
          :logoRecognitionAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation.t()
            ),
          :objectAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation.t()
            ),
          :segment =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoSegment.t(),
          :segmentLabelAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation.t()
            ),
          :shotAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoSegment.t()
            ),
          :shotLabelAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation.t()
            ),
          :speechTranscriptions =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription.t()
            ),
          :textAnnotations =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_TextAnnotation.t()
            )
        }

  field(:error, as: GoogleApi.VideoIntelligence.V1.Model.GoogleRpc_Status)

  field(
    :explicitAnnotation,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation
  )

  field(
    :frameLabelAnnotations,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation,
    type: :list
  )

  field(:inputUri)

  field(
    :logoRecognitionAnnotations,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation,
    type: :list
  )

  field(
    :objectAnnotations,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation,
    type: :list
  )

  field(
    :segment,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoSegment
  )

  field(
    :segmentLabelAnnotations,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation,
    type: :list
  )

  field(
    :shotAnnotations,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoSegment,
    type: :list
  )

  field(
    :shotLabelAnnotations,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation,
    type: :list
  )

  field(
    :speechTranscriptions,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription,
    type: :list
  )

  field(
    :textAnnotations,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_TextAnnotation,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
