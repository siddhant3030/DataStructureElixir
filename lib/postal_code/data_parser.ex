defmodule Elixir.BST.PostalCode.DataParser do
  @postal_codes_filepath "data/data.txt"

  def parse_data do
    [_header | data_rows] = File.read!(@postal_codes_filepath) |> String.split("\n")

    data_rows
  end
end
