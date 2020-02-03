defmodule BasicSupervisor do
  use Supervisor
  alias BasicOne
  alias BasicTwo
  alias BasicThree

  def start_link do
  IO.puts "Basic one is starting"
  GenServer.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      worker(BasicOne, []),
      worker(BasicTwo, []),
      worker(BasicThree, [])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
