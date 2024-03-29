defmodule Books do
  alias PackageReceiver
  def get_those_package_out do
    packages = ["adasd", "dsadasd", "sdadefe", "wqewqe", "eqwereq"]

    Enum.each(packages, fn(package) ->
      IO.puts "delivering package: #{package}"
      {:ok, pid} = PackageReceiver.start_link
      PackageReceiver.leave_at_the_door(pid, package)
    end)

  IO.puts "All done with deliveries"
  IO.puts "________________________"
  end
end
