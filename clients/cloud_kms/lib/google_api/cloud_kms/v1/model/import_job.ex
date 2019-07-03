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

defmodule GoogleApi.CloudKMS.V1.Model.ImportJob do
  @moduledoc """
  An ImportJob can be used to create CryptoKeys and
  CryptoKeyVersions using pre-existing key material,
  generated outside of Cloud KMS.

  When an ImportJob is created, Cloud KMS will generate a "wrapping key",
  which is a public/private key pair. You use the wrapping key to encrypt (also
  known as wrap) the pre-existing key material to protect it during the import
  process. The nature of the wrapping key depends on the choice of
  import_method. When the wrapping key generation
  is complete, the state will be set to
  ACTIVE and the public_key
  can be fetched. The fetched public key can then be used to wrap your
  pre-existing key material.

  Once the key material is wrapped, it can be imported into a new
  CryptoKeyVersion in an existing CryptoKey by calling
  ImportCryptoKeyVersion.
  Multiple CryptoKeyVersions can be imported with a single
  ImportJob. Cloud KMS uses the private key portion of the wrapping key to
  unwrap the key material. Only Cloud KMS has access to the private key.

  An ImportJob expires 3 days after it is created. Once expired, Cloud KMS
  will no longer be able to import or unwrap any key material that was wrapped
  with the ImportJob's public key.

  For more information, see
  [Importing a key](https://cloud.google.com/kms/docs/importing-a-key).

  ## Attributes

  *   `attestation` (*type:* `GoogleApi.CloudKMS.V1.Model.KeyOperationAttestation.t`, *default:* `nil`) - Output only. Statement that was generated and signed by the key creator
      (for example, an HSM) at key creation time. Use this statement to verify
      attributes of the key as stored on the HSM, independently of Google.
      Only present if the chosen ImportMethod is one with a protection
      level of HSM.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this ImportJob was created.
  *   `expireEventTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this ImportJob expired. Only present if
      state is EXPIRED.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this ImportJob is scheduled for
      expiration and can no longer be used to import key material.
  *   `generateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this ImportJob's key material was generated.
  *   `importMethod` (*type:* `String.t`, *default:* `nil`) - Required and immutable. The wrapping method to be used for incoming
      key material.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this ImportJob in the format
      `projects/*/locations/*/keyRings/*/importJobs/*`.
  *   `protectionLevel` (*type:* `String.t`, *default:* `nil`) - Required and immutable. The protection level of the ImportJob. This
      must match the
      protection_level of the
      version_template on the CryptoKey you
      attempt to import into.
  *   `publicKey` (*type:* `GoogleApi.CloudKMS.V1.Model.WrappingPublicKey.t`, *default:* `nil`) - Output only. The public key with which to wrap key material prior to
      import. Only returned if state is
      ACTIVE.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the ImportJob, indicating if it can
      be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attestation => GoogleApi.CloudKMS.V1.Model.KeyOperationAttestation.t(),
          :createTime => DateTime.t(),
          :expireEventTime => DateTime.t(),
          :expireTime => DateTime.t(),
          :generateTime => DateTime.t(),
          :importMethod => String.t(),
          :name => String.t(),
          :protectionLevel => String.t(),
          :publicKey => GoogleApi.CloudKMS.V1.Model.WrappingPublicKey.t(),
          :state => String.t()
        }

  field(:attestation, as: GoogleApi.CloudKMS.V1.Model.KeyOperationAttestation)
  field(:createTime, as: DateTime)
  field(:expireEventTime, as: DateTime)
  field(:expireTime, as: DateTime)
  field(:generateTime, as: DateTime)
  field(:importMethod)
  field(:name)
  field(:protectionLevel)
  field(:publicKey, as: GoogleApi.CloudKMS.V1.Model.WrappingPublicKey)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.ImportJob do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.ImportJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.ImportJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end