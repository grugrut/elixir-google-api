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

defmodule GoogleApi.Content.V2.Model.DatafeedFetchSchedule do
  @moduledoc """
  The required fields vary based on the frequency of fetching. For a monthly fetch schedule, day_of_month and hour are required. For a weekly fetch schedule, weekday and hour are required. For a daily fetch schedule, only hour is required.

  ## Attributes

  - dayOfMonth (Integer): The day of the month the feed file should be fetched (1-31). Defaults to: `null`.
  - fetchUrl (String): The URL where the feed file can be fetched. Google Merchant Center will support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP protocols, so the value will need to be a valid link using one of those four protocols. Defaults to: `null`.
  - hour (Integer): The hour of the day the feed file should be fetched (0-23). Defaults to: `null`.
  - minuteOfHour (Integer): The minute of the hour the feed file should be fetched (0-59). Read-only. Defaults to: `null`.
  - password (String): An optional password for fetch_url. Defaults to: `null`.
  - paused (Boolean): Whether the scheduled fetch is paused or not. Defaults to: `null`.
  - timeZone (String): Time zone used for schedule. UTC by default. E.g., \&quot;America/Los_Angeles\&quot;. Defaults to: `null`.
  - username (String): An optional user name for fetch_url. Defaults to: `null`.
  - weekday (String): The day of the week the feed file should be fetched. Defaults to: `null`.
  """

  defstruct [
    :"dayOfMonth",
    :"fetchUrl",
    :"hour",
    :"minuteOfHour",
    :"password",
    :"paused",
    :"timeZone",
    :"username",
    :"weekday"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.DatafeedFetchSchedule do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.DatafeedFetchSchedule do
  def encode(value, options) do
    GoogleApi.Content.V2.Deserializer.serialize_non_nil(value, options)
  end
end

