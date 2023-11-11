Pattern matching is a fundamental concept in Elixir, as it is in Erlang and many other functional programming languages. At its core, pattern matching is about binding data to variables. In Elixir, the `=` operator is often referred to as the "match" operator because of this behavior. Here's a breakdown:

1. **Basic Principle**: 
   In many programming languages, `=` signifies assignment. But in Elixir, it signifies a match. It tries to match the value on its right with the pattern on its left.

   ```elixir
   {a, b} = {1, 2}
   ```

   Here, `a` will be bound to `1` and `b` to `2`.

2. **Mismatch Errors**:
   If there's no match, Elixir will throw an error.
   
   ```elixir
   {a} = {1, 2}  # This will cause a MatchError
   ```

3. **Underscore**:
   The underscore (`_`) is special in pattern matching and denotes a value that you're not interested in capturing.

   ```elixir
   {a, _} = {1, 2}  # Only binds 1 to a, ignores 2
   ```

4. **Existing Variables**:
   When an already bound variable is used in a pattern, it doesn't rebind, but instead enforces the match against its value.

   ```elixir
   x = 1
   {x, y} = {1, 2}  # Works fine and binds y to 2
   {x, y} = {2, 3}  # This will cause a MatchError because x already equals 1
   ```

5. **Deep Patterns**:
   You can pattern match deeply nested data structures.

   ```elixir
   %{name: n, scores: [s1, s2 | _]} = %{name: "Alice", scores: [100, 95, 90]}
   # Here, n will be "Alice", s1 will be 100, and s2 will be 95
   ```

6. **Head | Tail**:
   Lists in Elixir can be split into their head (first element) and tail (the rest) using the `|` operator.

   ```elixir
   [head | tail] = [1, 2, 3, 4]
   # head will be 1, and tail will be [2, 3, 4]
   ```

7. **Function Clauses**:
   Pattern matching is commonly used in function clauses to execute code based on the shape and content of the arguments.

   ```elixir
   defmodule Factorial do
     def of(0), do: 1
     def of(n) when n > 0, do: n * of(n - 1)
   end
   ```

8. **Control Structures**:
   Pattern matching is also used in case statements and other control structures.

   ```elixir
   case File.read("example.txt") do
     {:ok, content} -> IO.puts("Read successfully!")
     {:error, reason} -> IO.puts("Error reading: #{reason}")
   end
   ```

Pattern matching is one of the features that makes Elixir expressive and efficient. It encourages developers to think about the data and its structure, leading to more readable and maintainable code.