# Copyright 2018 Google Inc.
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

defmodule GoogleApi.Drive.V3.Model.FileContentHints do
  @moduledoc """
  Additional information about the content of the file. These fields are never populated in responses.

  ## Attributes

  - indexableText (String.t): Text to be indexed for the file to improve fullText queries. This is limited to 128KB in length and may contain HTML elements. Defaults to: `null`.
  - thumbnail (FileContentHintsThumbnail):  Defaults to: `null`.
  """

  defstruct [
    :indexableText,
    :thumbnail
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.FileContentHints do
  import GoogleApi.Drive.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :thumbnail,
      :struct,
      GoogleApi.Drive.V3.Model.FileContentHintsThumbnail,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.FileContentHints do
  def encode(value, options) do
    GoogleApi.Drive.V3.Deserializer.serialize_non_nil(value, options)
  end
end
