defmodule Binary do
  def search(list, value), do: search(List.to_tuple(list), value, 0, length(list)-1)

  def search(_tuple, _value, low, high) when high < low, do: :not_found
  def search(tuple, value, low, high) do
    mid = div(low + high, 2)
    midval = elem(tuple, mid)
    cond do
      value <  midval -> search(tuple, value, low, mid-1)
      value >  midval -> search(tuple, value, mid+1, high)
      value == midval -> mid
    end
  end
end
