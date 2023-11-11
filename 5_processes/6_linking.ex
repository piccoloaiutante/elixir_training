# In this example you have a worker process doing some important task,
# and a watchdog process that should only run as long as the worker is running.
# If the worker crashes, you want the watchdog to terminate as well.

defmodule LinkingExample do
  def start do
    worker_pid = spawn(LinkingExample, :worker, [])
    watchdog_pid = spawn(LinkingExample, :watchdog, [worker_pid])
    IO.puts("Worker process started with PID #{inspect(worker_pid)}")
    IO.puts("Watchdog process started with PID #{inspect(watchdog_pid)}")

    # Link the watchdog to the worker
    Process.link(watchdog_pid)

    # Simulate worker crash after 3 seconds
    Process.send_after(worker_pid, :crash, 3000)
  end

  def worker do
    receive do
      :crash ->
        IO.puts("Worker process crashing now!")
        exit(:crash)
    end
    # Worker would normally do some work here
  end

  def watchdog(worker_pid) do
    IO.puts("Watchdog started, monitoring #{inspect(worker_pid)}")

    Process.flag(:trap_exit, true)  # Trap exit to handle crash message
    # If the worker crashes, this process will also crash
    receive do
      {:EXIT, _pid, _reason} ->
        IO.puts("Watchdog received exit signal and will terminate")
    end
  end
end

LinkingExample.start()
