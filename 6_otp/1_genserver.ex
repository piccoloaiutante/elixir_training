defmodule Counter do
  # Import of GenServer behaviour
  use GenServer

  # Starting the server
  def create_server(initial_count) do
    # GenServer.start_link(__MODULE__, initial_state, options)
    GenServer.start_link(__MODULE__, initial_count)
  end

  def increment(pid) do
    GenServer.call(pid, :increment)
  end

  def decrement(pid) do
    GenServer.call(pid, :decrement)
  end

  # GenServer first call initialization callbacks
  def init(initial_count) do
    {:ok, initial_count}
  end

  # Handling call for syncronous messages
  # handle_call(request, from, state)
  def handle_call(:increment, _from, count) do

    # {:reply, reply, new_state}
    {:reply, count + 1, count + 1}
  end

  def handle_call(:decrement, _from, count) do

    # {:reply, reply, new_state}
    {:reply, count - 1, count - 1}
  end
end

# Start the server
{:ok, pid} = Counter.create_server(0)

# Increment the counter
IO.inspect(Counter.increment(pid))
IO.inspect(Counter.increment(pid))
IO.inspect(Counter.increment(pid))
IO.inspect(Counter.decrement(pid))
IO.inspect(Counter.decrement(pid))
IO.inspect(Counter.decrement(pid))
