### Exercise: Building a Basic GenServer for a Key-Value Store

**Objective**: Implement a simple GenServer that acts as an in-memory key-value store. This exercise will demonstrate how to use GenServer for state management in Elixir.

#### Requirements:

1. **Initialization**: The GenServer should initialize with an empty map as its state.

2. **Setting a Value**: Implement a function to set a key-value pair.

3. **Getting a Value**: Implement a function to retrieve a value by its key.

4. **Deleting a Value**: Implement a function to remove a key-value pair.

#### Steps:

1. **Define the GenServer Module**: Create a module `KeyValueStore` that uses GenServer.

2. **Implement the Callbacks**: Define the necessary GenServer callbacks, including `init/1`, `handle_call/3`, and others as needed.

3. **Implement Public API Functions**: Create public functions to interact with the GenServer (set, get, delete).

4. **Test the GenServer**: Write simple tests or use IEx to manually test the functionality.

#### Testing the GenServer:

1. Start the GenServer in IEx:
   ```elixir
   {:ok, pid} = KeyValueStore.start_link()
   ```

2. Test setting and getting a value:
   ```elixir
   KeyValueStore.set(pid, :foo, "bar")
   KeyValueStore.get(pid, :foo)  # Should return "bar"
   ```

3. Test deleting a value:
   ```elixir
   KeyValueStore.delete(pid, :foo)
   KeyValueStore.get(pid, :foo)  # Should return nil
   ```

This exercise provides a practical introduction to GenServer in Elixir, showcasing basic state management and synchronous communication with a client process.