defmodule Queue do
  defstruct front: [], rear: []

  def new do
    %Queue{}
  end

  def put(%Queue{front: [], rear: rear = [_]}, item) do
    %Queue{front: rear, rear: [item]}
  end

  def put(%Queue{rear: rear} = queue, item) do
    %Queue{queue|rear: [item | rear]}
  end

  def front(%Queue{front: front = [_], rear: []}, item) do
    %Queue{front: [item], rear: front}
  end

#   a |> Queue.front(12) |> Queue.front(1222111) |> Queue.front(1212)
# %Queue{front: [1212, 1222111], rear: '\f'}

  def front(%Queue{front: front} = queue, item) do
    %Queue{queue|front: [item | front]}
  end

  def pop(%Queue{front: [], rear: []}) do
    :empty
  end

  def pop(%Queue{front: [], rear: [item]}) do
    {item, %Queue{front: [], rear: []}}
  end
end
