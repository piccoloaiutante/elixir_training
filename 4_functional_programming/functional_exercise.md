### Exercise: Transforming a List of Products

**Objective:** Write an Elixir program that transforms a list of product maps. Each product map has a name and a price. The goal is to apply a discount to the price of each product and then format each product into a string that describes the product.

**Detailed Requirements:**

1. You have a list of products, where each product is represented as a map with `:name` and `:price` keys. For example: `%{name: "Widget", price: 200}`.
2. Apply a 10% discount to the price of each product.
3. Transform each product into a string that follows this format: `"<name> at <discounted_price>"`.
4. Use `Enum.map` and the pipe operator to achieve this.

**Example Input:**

```elixir
products = [
  %{name: "Widget", price: 200},
  %{name: "Gadget", price: 150},
  %{name: "Doohickey", price: 100}
]
```

**Expected Output:**

A list of strings, each describing a product and its discounted price.

```elixir
["Widget at $180.0", "Gadget at $135.0", "Doohickey at $90.0"]
```
