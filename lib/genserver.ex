defmodule Basic do
  use GenServer

  def start_link do
    GenServer.startlink(Basic, [])
  end
end
