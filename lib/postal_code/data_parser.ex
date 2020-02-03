defmodule BST.PostalCode.DataParser do
  @postal_codes_filepath "data.txt"

  def parse_data do
    [_ | data_rows] = File.read!(@postal_codes_filepath) |> String.split("\n")

    data_rows
  end
end
