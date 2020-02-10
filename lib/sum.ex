defmodule NaiveList do
  def print([]), do:
    nil
  def print([value | rest]) do
    IO.puts(value)
    print(rest)
  end

  def filter(limit, list), do:
    filter(limit, list, [])
  def filter(_limit, [], output), do:
    output
  def filter(limit, [value | rest], output) when value < limit, do:
    filter(limit, rest, [value | output])
  def filter(limit, [_value| rest], output), do:
    filter(limit, rest, output)

  def make_list(), do:
    make_list(IO.gets(""), [])
  defp make_list(""<>number, list), do:
    make_list(IO.gets(""), [(number |> String.trim |> String.to_integer) | list])
  defp make_list(:eof, list), do:
    list
end
