# Swapi

**An API wrapper for https://swapi.co built with Elixir**

## Examples

```elixir
defmodule Examples do
  def main() do
    # Output:
    # A New Hope
    # Attack of the Clones
    # The Phantom Menace
    # ...
    Swapi.get_all_films()
    |> Enum.each(fn f -> IO.puts("#{f["title"]}") end)

    # Output:
    # Alderaan
    # Yavin IV
    # Hoth
    # ...
    Swapi.get_all_planets()
    |> Enum.each(fn p -> IO.puts("#{p["name"]}") end)

    # Output:
    # Hutt: Huttese
    # Yoda's species: Galactic basic
    # Trandoshan: Dosh
    Swapi.get_all_species()
    |> Enum.each(fn s -> IO.puts("#{s["name"]}: #{s["language"]}") end)
  end
end
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `swapi` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:swapi, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/swapi](https://hexdocs.pm/swapi).

