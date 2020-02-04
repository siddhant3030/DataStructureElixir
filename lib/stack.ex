defmodule Stack do

  def size(stack) do
    Enum.count(stack)
  end

  def pop(stack) do
    [last_in | rest] = stack
    {last_in, rest}
  end

  def push(stack, item) do
    [stack | item]
  end

end
