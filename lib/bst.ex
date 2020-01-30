defmodule BST do

  def new(value) do
    %{value: value, left: :leaf, right: :leaf}
  end

# iex(1)> tree = BST.new(100)
# %{left: :leaf, right: :leaf, value: 100}
# iex(2)> tree1 = BST.insert(tree, 200)
# %{left: :leaf, right: %{left: :leaf, right: :leaf, value: 200}, value: 100}
# iex(3)> tree2 = BST.insert(tree, 50)
# %{left: %{left: :leaf, right: :leaf, value: 50}, right: :leaf, value: 100}
# iex(4)> tree2 = BST.insert(tree1, 50)
# %{
#   left: %{left: :leaf, right: :leaf, value: 50},
#   right: %{left: :leaf, right: :leaf, value: 200},
#   value: 100
# }

  def insert(:leaf, node_value), do: new node_value

  def insert(%{value: value, left: left, right: right}, node_value) do
    if node_value < value do
      %{value: value, left: insert(left, node_value), right: right}
    else
      %{value: value, left: left, right: insert(right, node_value)}
    end
  end

  def delete_node(tree, node_value) do
    if exists?(tree, node_value) do
      delete tree, node_value
    else
      nil
    end
  end

  def exists?(tree, node_value) do
    e tree, node_value
  end

  defp e(:leaf, _), do: false
  defp e(%{value: node_value, left: _, right: _}, node_value), do: true
  defp e(tree_node, node_value) do
    if node_value < tree_node.value do
      e tree_node.left, node_value
    else
      e tree_node.right, node_value
    end
  end
end
