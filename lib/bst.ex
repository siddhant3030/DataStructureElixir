defmodule BST do

  def new(element) do
    %{element: element, left: :leaf, right: :leaf}
  end

  def insert(:element, node_value), do: new node_value

  def insert(%{element: element, left: left, right: right}, node_value) do
    if node_value < element do
      %{element: element, left: insert(left, node_value), right: right}
    else
      %{element: element, left: left, right: insert(right, node_value)}
    end
  end
end
