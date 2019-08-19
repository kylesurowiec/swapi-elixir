defmodule Examples do
  def main() do
    film_names =
      Swapi.get_all_films()
      |> Enum.map(& &1["title"])

    # ["A New Hope", "Attack of the Clones", ...]
    IO.inspect(film_names)

    planet_names =
      Swapi.get_all_planets()
      |> Enum.map(& &1["name"])

    # ["Alderaan", "Yavin IV", "Hoth", ...]
    IO.inspect(planet_names)

    languages =
      Swapi.get_all_species()
      |> Enum.map(&"#{&1["name"]}: #{&1["language"]}")

    # ["Hutt: Huttese", "Yoda's species: Galactic basic", "Trandoshan: Dosh", ...]
    IO.inspect(languages)
  end
end
