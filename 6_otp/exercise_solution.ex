defmodule KeyValueStore do
  use GenServer

  # Public API

  def start_link do
    GenServer.start_link(__MODULE__, %{})
  end

  def set(pid, key, value) do
    GenServer.call(pid, {:set, key, value})
  end

  def get(pid, key) do
    GenServer.call(pid, {:get, key})
  end

  def delete(pid, key) do
    GenServer.call(pid, {:delete, key})
  end

  # GenServer Callbacks

  def init(initial_state) do
    {:ok, initial_state}
  end

  def handle_call({:set, key, value}, _from, state) do
    {:reply, :ok, Map.put(state, key, value)}
  end

  def handle_call({:get, key}, _from, state) do
    {:reply, Map.get(state, key), state}
  end

  def handle_call({:delete, key}, _from, state) do
    {:reply, :ok, Map.delete(state, key)}
  end
end
