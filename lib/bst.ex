defmodule BST do

  def new(element) do
    %{element: element, left: :leaf, right: :leaf}
  end

  def insert(:element, node_value), do: new node_value
end
