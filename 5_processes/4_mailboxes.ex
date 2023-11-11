defmodule Mailbox do
  def start do
    spawn(fn -> loop() end)
  end

  defp loop do
    receive do
      :ping ->
        IO.puts("pong")
        loop()
      num ->
        IO.puts("#{num + 3}")
        loop()
    end
  end
end

ping_pong_pid = Mailbox.start()
send(ping_pong_pid, :ping)
send(ping_pong_pid, 3)
