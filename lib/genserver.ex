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

  def get_my_state(process_id) do
    the_state = GenServer.call(process_id, {:get_the_state})
    IO.inspect the_state
  end

  def handle_call({:get_the_state}, _from, my_state) do
    {:reply, my_state, my_state}
  end
end
