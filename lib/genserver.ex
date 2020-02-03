defmodule Basic do
  use GenServer

  def start_link do
    GenServer.start_link(Basic, "Hello")
  end

  def init(initial_data) do
    IO.puts "I am being called"
    greetings = %{:greeting => initial_data}
    {:ok, greetings}
  end
end
