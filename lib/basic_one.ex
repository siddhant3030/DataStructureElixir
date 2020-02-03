defmodule BasicOne do
  use Supervisor

  def start_link do
  IO.puts "Basic one is starting"
  GenServer.start_link(__MODULE__, [])
  end
end
