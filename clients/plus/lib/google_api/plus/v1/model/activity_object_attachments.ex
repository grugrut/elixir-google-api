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

defmodule GoogleApi.Plus.V1.Model.ActivityObjectAttachments do
  @moduledoc """
  

  ## Attributes

  - content (String): If the attachment is an article, this property contains a snippet of text from the article. It can also include descriptions for other types. Defaults to: `null`.
  - displayName (String): The title of the attachment, such as a photo caption or an article title. Defaults to: `null`.
  - embed (ActivityObjectEmbed):  Defaults to: `null`.
  - fullImage (ActivityObjectFullImage):  Defaults to: `null`.
  - id (String): The ID of the attachment. Defaults to: `null`.
  - image (ActivityObjectImage):  Defaults to: `null`.
  - objectType (String): The type of media object. Possible values include, but are not limited to, the following values:   - \&quot;photo\&quot; - A photo.  - \&quot;album\&quot; - A photo album.  - \&quot;video\&quot; - A video.  - \&quot;article\&quot; - An article, specified by a link. Defaults to: `null`.
  - thumbnails (List[ActivityObjectThumbnails]): If the attachment is an album, this property is a list of potential additional thumbnails from the album. Defaults to: `null`.
  - url (String): The link to the attachment, which should be of type text/html. Defaults to: `null`.
  """

  defstruct [
    :"content",
    :"displayName",
    :"embed",
    :"fullImage",
    :"id",
    :"image",
    :"objectType",
    :"thumbnails",
    :"url"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.ActivityObjectAttachments do
  import GoogleApi.Plus.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"embed", :struct, GoogleApi.Plus.V1.Model.ActivityObjectEmbed, options)
    |> deserialize(:"fullImage", :struct, GoogleApi.Plus.V1.Model.ActivityObjectFullImage, options)
    |> deserialize(:"image", :struct, GoogleApi.Plus.V1.Model.ActivityObjectImage, options)
    |> deserialize(:"thumbnails", :list, GoogleApi.Plus.V1.Model.ActivityObjectThumbnails, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.ActivityObjectAttachments do
  def encode(value, options) do
    GoogleApi.Plus.V1.Deserializer.serialize_non_nil(value, options)
  end
end

