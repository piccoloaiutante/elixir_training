# Spawning a process that prints a message
pid = spawn(fn -> IO.puts("Hello from a new process") end)
IO.inspect(pid)
