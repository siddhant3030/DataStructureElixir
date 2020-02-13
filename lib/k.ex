defmodule BST.K do
  @spec main :: :ok
  def main do
    do_stuff()
  end

  def do_stuff do
    my_str = "siddhant"
    IO.puts "Length : #{String.length(my_str)}"
    longer_str = my_str <> " " <> "is longer"
    IO.puts "Equal : #{"Egg" === "egg"}"
  end
end
