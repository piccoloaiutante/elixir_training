defmodule AsyncDemo do
  def start do
    spawn(fn -> compute() end)
  end

  defp compute do
    Process.sleep(2000)  # Simulate a computation
    IO.puts("Computation done")
  end
end

AsyncDemo.start()
IO.puts("Computation started")
