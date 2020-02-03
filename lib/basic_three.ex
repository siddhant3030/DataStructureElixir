defmodule BasicThree do
  use Supervisor

  def start_link do
  IO.puts "Basic three is starting"
  GenServer.start_link(__MODULE__, [])
  end
end
