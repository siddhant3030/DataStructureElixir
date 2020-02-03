defmodule BST.PostalCode.DataParserTest do
  use ExUnit.Case
  alias BST.PostalCode.DataParser
  doctest Bst
end

test "parse_data" do
  data_rows = DataParser.parse_data
  first_row = Enum.at(data_rows, 0)

  IO.inspect first_row
end
