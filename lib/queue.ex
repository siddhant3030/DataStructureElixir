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
end
