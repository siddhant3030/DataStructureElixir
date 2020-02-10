defmodule BST.M do
  def filter([num|list]) do
      list |> Enum.filter(fn el -> el < num end) |> Enum.map(fn el -> IO.puts el end)
  end

  def main() do
      IO.read(:stdio, :all)
          |> String.split
          |> Enum.map(&String.to_integer(&1))
          |> filter
  end
end
