# This is an example where one process monitor another, and if the monitored
# process exits, the monitoring process will take an action based on
# the exit message.

defmodule ProcessMonitorExample do
  def start do
    worker_pid = spawn(fn -> worker_process() end)
    IO.puts("Worker process started with PID #{inspect(worker_pid)}")

    monitor_pid = spawn(fn -> monitor_process(worker_pid) end)
    IO.puts("Monitor process started with PID #{inspect(monitor_pid)}")
  end

  defp worker_process do
    # Simulate work with a sleep
    Process.sleep(1000)
    IO.puts("Worker process is exiting now.")
    exit(:normal)
  end

  defp monitor_process(worker_pid) do
    Process.monitor(worker_pid)
    receive do
      {:DOWN, _ref, :process, ^worker_pid, reason} ->
        IO.puts("Monitor process detected worker exit with reason: #{inspect(reason)}")
    end
  end
end

ProcessMonitorExample.start()
