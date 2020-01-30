defmodule BstTest do
  use ExUnit.Case
  doctest Bst

  test "greets the world" do
    assert Bst.hello() == :world
  end
end
