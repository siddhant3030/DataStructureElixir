defmodule BST.BasicOne do
  use Supervisor

  @spec start_link :: :ignore | {:error, any} | {:ok, pid}
  def start_link do
  IO.puts "Basic one is starting"
  GenServer.start_link(__MODULE__, [])
  end
end
