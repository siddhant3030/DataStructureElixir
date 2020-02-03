defmodule PackageReceiver do
  use GenServer
  alias Books

  def start_link do
    GenServer.start_link(PackageReceiver, [])
  end

  def leave_at_the_door(receiver_id, package_name) do
    GenServer.cast(receiver_id, {:async_package, package_name})
  end

  def handle_cast({:async_package, package_name}, state) do
    :timer.sleep(1000)
    IO.puts "I received package: #{package_name}"
    {:no_reply, state}
  end
end
