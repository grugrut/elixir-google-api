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

defmodule GoogleApi.CivicInfo.V2.Model.PollingLocation do
  @moduledoc """
  A location where a voter can vote. This may be an early vote site, an election day voting location, or a drop off location for a completed ballot.

  ## Attributes

  - address (SimpleAddressType): The address of the location. Defaults to: `null`.
  - endDate (String): The last date that this early vote site or drop off location may be used. This field is not populated for polling locations. Defaults to: `null`.
  - id (String): An ID for this object. IDs may change in future requests and should not be cached. Access to this field requires special access that can be requested from the Request more link on the Quotas page. Defaults to: `null`.
  - name (String): The name of the early vote site or drop off location. This field is not populated for polling locations. Defaults to: `null`.
  - notes (String): Notes about this location (e.g. accessibility ramp or entrance to use). Defaults to: `null`.
  - pollingHours (String): A description of when this location is open. Defaults to: `null`.
  - sources (List[Source]): A list of sources for this location. If multiple sources are listed the data has been aggregated from those sources. Defaults to: `null`.
  - startDate (String): The first date that this early vote site or drop off location may be used. This field is not populated for polling locations. Defaults to: `null`.
  - voterServices (String): The services provided by this early vote site or drop off location. This field is not populated for polling locations. Defaults to: `null`.
  """

  defstruct [
    :"address",
    :"endDate",
    :"id",
    :"name",
    :"notes",
    :"pollingHours",
    :"sources",
    :"startDate",
    :"voterServices"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.PollingLocation do
  import GoogleApi.CivicInfo.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"address", :struct, GoogleApi.CivicInfo.V2.Model.SimpleAddressType, options)
    |> deserialize(:"sources", :list, GoogleApi.CivicInfo.V2.Model.Source, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.PollingLocation do
  def encode(value, options) do
    GoogleApi.CivicInfo.V2.Deserializer.serialize_non_nil(value, options)
  end
end

