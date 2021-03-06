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

defmodule GoogleApi.Spanner.V1.Model.Mutation do
  @moduledoc """
  A modification to one or more Cloud Spanner rows.  Mutations can be applied to a Cloud Spanner database by sending them in a Commit call.

  ## Attributes

  - delete (Delete): Delete rows from a table. Succeeds whether or not the named rows were present. Defaults to: `null`.
  - insert (Write): Insert new rows in a table. If any of the rows already exist, the write or transaction fails with error &#x60;ALREADY_EXISTS&#x60;. Defaults to: `null`.
  - insertOrUpdate (Write): Like insert, except that if the row already exists, then its column values are overwritten with the ones provided. Any column values not explicitly written are preserved. Defaults to: `null`.
  - replace (Write): Like insert, except that if the row already exists, it is deleted, and the column values provided are inserted instead. Unlike insert_or_update, this means any values not explicitly written become &#x60;NULL&#x60;. Defaults to: `null`.
  - update (Write): Update existing rows in a table. If any of the rows does not already exist, the transaction fails with error &#x60;NOT_FOUND&#x60;. Defaults to: `null`.
  """

  defstruct [
    :"delete",
    :"insert",
    :"insertOrUpdate",
    :"replace",
    :"update"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Mutation do
  import GoogleApi.Spanner.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"delete", :struct, GoogleApi.Spanner.V1.Model.Delete, options)
    |> deserialize(:"insert", :struct, GoogleApi.Spanner.V1.Model.Write, options)
    |> deserialize(:"insertOrUpdate", :struct, GoogleApi.Spanner.V1.Model.Write, options)
    |> deserialize(:"replace", :struct, GoogleApi.Spanner.V1.Model.Write, options)
    |> deserialize(:"update", :struct, GoogleApi.Spanner.V1.Model.Write, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Mutation do
  def encode(value, options) do
    GoogleApi.Spanner.V1.Deserializer.serialize_non_nil(value, options)
  end
end

