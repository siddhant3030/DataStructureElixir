defmodule Elixir.BST.PostalCode.DataParser do
  @postal_codes_filepath "data/data.txt"

  def parse_data do
    [_header | data_rows] = File.read!(@postal_codes_filepath) |> String.split("\n")

    data_rows
    |> Enum.map(fn(row) -> String.split(row, "\t") end)
    |> Enum.filter(fn(row) ->
          case row do
            [_postal_code, _, _, _, _, _latitude, _longitude] -> true
            _ -> false
          end
        end)
    |> Enum.map(fn(row) -> [postal_code, _, _, _, _, latitude, longitude] = row
        [postal_code, latitude, longitude]
        end)
  end
end
