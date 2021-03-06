# Copyright 2017 Google Inc.
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

defmodule GoogleApi.Spectrum.V1explorer.Model.SpectrumMessage do
  @moduledoc """
  Available spectrum can be logically characterized by a list of frequency ranges and permissible power levels for each range.

  ## Attributes

  - bandwidth (Float): The bandwidth (in Hertz) for which permissible power levels are specified. For example, FCC regulation would require only one spectrum specification at 6MHz bandwidth, but Ofcom regulation would require two specifications, at 0.1MHz and 8MHz. This parameter may be empty if there is no available spectrum. It will be present otherwise. Defaults to: `null`.
  - frequencyRanges (List[FrequencyRange]): The list of frequency ranges and permissible power levels. The list may be empty if there is no available spectrum, otherwise it will be present. Defaults to: `null`.
  """

  defstruct [
    :"bandwidth",
    :"frequencyRanges"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spectrum.V1explorer.Model.SpectrumMessage do
  import GoogleApi.Spectrum.V1explorer.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"frequencyRanges", :list, GoogleApi.Spectrum.V1explorer.Model.FrequencyRange, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spectrum.V1explorer.Model.SpectrumMessage do
  def encode(value, options) do
    GoogleApi.Spectrum.V1explorer.Deserializer.serialize_non_nil(value, options)
  end
end

