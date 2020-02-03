defmodule BST.BasicThree do
  use Supervisor

  @spec start_link :: :ignore | {:error, any} | {:ok, pid}
  def start_link do
  IO.puts "Basic three is starting"
  GenServer.start_link(__MODULE__, [])
  end
end
