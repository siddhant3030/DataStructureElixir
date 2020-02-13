defmodule BST.K do
  @spec main :: :ok
  def main do
    name = IO.gets("what is your name?") |> String.trim
    IO.puts "Hello #{name}"
  end
end
