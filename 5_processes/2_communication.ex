# Defining a process that waits for a message
listener = spawn(fn ->
  receive do
    {:msg, content} -> IO.puts("Received: #{content}")
  end
end)
send(listener, {:msg, "Hello"})
