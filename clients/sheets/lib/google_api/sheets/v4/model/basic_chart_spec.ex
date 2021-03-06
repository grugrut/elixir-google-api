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

defmodule GoogleApi.Sheets.V4.Model.BasicChartSpec do
  @moduledoc """
  The specification for a basic chart.  See BasicChartType for the list of charts this supports.

  ## Attributes

  - axis ([BasicChartAxis]): The axis on the chart. Defaults to: `null`.
  - chartType (String.t): The type of the chart. Defaults to: `null`.
    - Enum - one of [BASIC_CHART_TYPE_UNSPECIFIED, BAR, LINE, AREA, COLUMN, SCATTER, COMBO, STEPPED_AREA]
  - compareMode (String.t): The behavior of tooltips and data highlighting when hovering on data and chart area. Defaults to: `null`.
    - Enum - one of [BASIC_CHART_COMPARE_MODE_UNSPECIFIED, DATUM, CATEGORY]
  - domains ([BasicChartDomain]): The domain of data this is charting. Only a single domain is supported. Defaults to: `null`.
  - headerCount (integer()): The number of rows or columns in the data that are \&quot;headers\&quot;. If not set, Google Sheets will guess how many rows are headers based on the data.  (Note that BasicChartAxis.title may override the axis title  inferred from the header values.) Defaults to: `null`.
  - interpolateNulls (boolean()): If some values in a series are missing, gaps may appear in the chart (e.g, segments of lines in a line chart will be missing).  To eliminate these gaps set this to true. Applies to Line, Area, and Combo charts. Defaults to: `null`.
  - legendPosition (String.t): The position of the chart legend. Defaults to: `null`.
    - Enum - one of [BASIC_CHART_LEGEND_POSITION_UNSPECIFIED, BOTTOM_LEGEND, LEFT_LEGEND, RIGHT_LEGEND, TOP_LEGEND, NO_LEGEND]
  - lineSmoothing (boolean()): Gets whether all lines should be rendered smooth or straight by default. Applies to Line charts. Defaults to: `null`.
  - series ([BasicChartSeries]): The data this chart is visualizing. Defaults to: `null`.
  - stackedType (String.t): The stacked type for charts that support vertical stacking. Applies to Area, Bar, Column, Combo, and Stepped Area charts. Defaults to: `null`.
    - Enum - one of [BASIC_CHART_STACKED_TYPE_UNSPECIFIED, NOT_STACKED, STACKED, PERCENT_STACKED]
  - threeDimensional (boolean()): True to make the chart 3D. Applies to Bar and Column charts. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          axis: list(GoogleApi.Sheets.V4.Model.BasicChartAxis.t()),
          chartType: any(),
          compareMode: any(),
          domains: list(GoogleApi.Sheets.V4.Model.BasicChartDomain.t()),
          headerCount: any(),
          interpolateNulls: any(),
          legendPosition: any(),
          lineSmoothing: any(),
          series: list(GoogleApi.Sheets.V4.Model.BasicChartSeries.t()),
          stackedType: any(),
          threeDimensional: any()
        }

  defstruct [
    :axis,
    :chartType,
    :compareMode,
    :domains,
    :headerCount,
    :interpolateNulls,
    :legendPosition,
    :lineSmoothing,
    :series,
    :stackedType,
    :threeDimensional
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BasicChartSpec do
  import GoogleApi.Sheets.V4.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:axis, :list, GoogleApi.Sheets.V4.Model.BasicChartAxis, options)
    |> deserialize(:domains, :list, GoogleApi.Sheets.V4.Model.BasicChartDomain, options)
    |> deserialize(:series, :list, GoogleApi.Sheets.V4.Model.BasicChartSeries, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BasicChartSpec do
  def encode(value, options) do
    GoogleApi.Sheets.V4.Deserializer.serialize_non_nil(value, options)
  end
end
