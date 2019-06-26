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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetection do
  @moduledoc """
  Relevant information for the image from the Internet.

  ## Attributes

  *   `bestGuessLabels` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebLabel.t)`, *default:* `nil`) - The service's best guess as to the topic of the request image.
      Inferred from similar images on the open web.
  *   `fullMatchingImages` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage.t)`, *default:* `nil`) - Fully matching images from the Internet.
      Can include resized copies of the query image.
  *   `pagesWithMatchingImages` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebPage.t)`, *default:* `nil`) - Web pages containing the matching images from the Internet.
  *   `partialMatchingImages` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage.t)`, *default:* `nil`) - Partial matching images from the Internet.
      Those images are similar enough to share some key-point features. For
      example an original image will likely have partial matching for its crops.
  *   `visuallySimilarImages` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage.t)`, *default:* `nil`) - The visually similar image results.
  *   `webEntities` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebEntity.t)`, *default:* `nil`) - Deduced entities from similar images on the Internet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bestGuessLabels =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebLabel.t()),
          :fullMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage.t()),
          :pagesWithMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebPage.t()),
          :partialMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage.t()),
          :visuallySimilarImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage.t()),
          :webEntities =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebEntity.t())
        }

  field(
    :bestGuessLabels,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebLabel,
    type: :list
  )

  field(
    :fullMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage,
    type: :list
  )

  field(
    :pagesWithMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebPage,
    type: :list
  )

  field(
    :partialMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage,
    type: :list
  )

  field(
    :visuallySimilarImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebImage,
    type: :list
  )

  field(
    :webEntities,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetectionWebEntity,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetection do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p5beta1WebDetection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end