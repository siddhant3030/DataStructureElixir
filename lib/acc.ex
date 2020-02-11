defmodule BST.MyFilter do

  def filter_numbers(list, fun) do
    filter_numbers(list, fun, [])
  end

  def filter_numbers([], _fun, acc) do
    Enum.reverse(acc)
  end

  def filter_numbers([h|t], fun, acc) do
    case fun.(h) do
      true ->
        filter_numbers(t, fun, [h|acc])

      false ->
        filter_numbers(t, fun, acc)
    end
  end

end
