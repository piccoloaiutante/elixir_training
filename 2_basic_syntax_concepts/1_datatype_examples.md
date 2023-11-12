Of course! Here's a brief code example for each datatype in Elixir:

1. **Integers**:
   ```elixir
   i = 123

   # Use underscores for readability
   one_million = 1_000_000

   ```
   

2. **Floats**:
   ```elixir
   f = 3.14
   
   # Exponential notation
   speed_of_light = 3.0e8
   ```

3. **Booleans**:
   ```elixir
   is_true = true
   is_false = false
   ```

4. **Atoms**:
   ```elixir
   status = :ok
   # Use atoms as keys in maps with a special syntax
   config = %{mode: :production}
   ```

5. **Strings**:
   ```elixir
   greeting = "Hello, World!"
   ```

6. **Lists**:
   ```elixir
   l = [1, 2, :three, "four"]
   
   # List comprehensions
   squares = [for x <- [1, 2, 3, 4], do: x * x]
   ```

7. **Tuples**:
   ```elixir
   t = {:ok, "Data loaded successfully"}
   
   # Often used with pattern matching
   {:ok, result} = {:ok, "Data loaded"}
   ```

8. **Maps**:
   ```elixir
   person = %{name: "Alice", age: 30}
   IO.puts(person[:name])  # Alice
   ```

9. **Keyword Lists**:
   ```elixir
   options = [color: "red", size: "medium"]
   
   # Commonly used for passing options
   File.read("path.txt", [mode: :binary])
   ```

10. **Binaries**:
    ```elixir
    bin = <<1, 2, 3>>
    ```

11. **Ranges**:
    ```elixir
    r = 1..10
   
    # Use ranges in comprehensions
    even_numbers = [for x <- 1..10, rem(x, 2) == 0, do: x]
    ```

15. **Functions**:
    Both named and anonymous functions are shown:
    ```elixir
    # Named function
    defmodule Math do
      def add(a, b) do
        a + b
      end
    end

    addition = Math.add(1, 2)
    
    # Anonymous function
    multiply = fn a, b -> a * b end
    result = multiply.(3, 4)
    ```

