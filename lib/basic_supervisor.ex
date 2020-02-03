defmodule BasicSupervisor do
  use Supervisor
  alias BasicOne
  alias BasicTwo
  alias BasicThree

  @spec start_link :: :ignore | {:error, any} | {:ok, pid}
  def start_link do
  IO.puts "Basic one is starting"
  GenServer.start_link(__MODULE__, [])
  end

  @spec init([]) :: {:ok, {{any, any, any}, any}}
  def init([]) do
    children = [
      worker(BasicOne, []),
      worker(BasicTwo, []),
      worker(BasicThree, [])
    ]

    supervise(children, strategy: :one_for_all)
  end
end
