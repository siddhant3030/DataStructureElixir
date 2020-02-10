defmodule BST.Solution do

  def fun(ret, n, [head | tail]) do
    cond do
      n > head ->
        fun(ret ++ [head], n, tail)
      true ->
        fun(ret, n, tail)
    end
  end

  def fun(ret, _, []), do: ret


  def filter(arr) do
    [n|a] = arr
    list = []

    fun(list, n, a)
  end

  def main() do
    IO.read(:stdio, :all)
      |> String.split
      |> Enum.map(&String.to_integer(&1))
      |> filter
      |> Enum.each(fn a -> IO.puts a end)
  end
end

Solution.main()
