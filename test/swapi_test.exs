defmodule SwapiTest do
  use ExUnit.Case
  doctest Swapi

  test "get_person 1" do
    assert Swapi.get_person("1")["name"] == "Luke Skywalker"
  end

  test "get_film 1" do
    assert Swapi.get_film("1")["title"] == "A New Hope"
  end

  test "get_starship 3" do
    assert Swapi.get_starship("3")["name"] == "Star Destroyer"
  end

  test "get_vehicle 4" do
    assert Swapi.get_vehicle("4")["name"] == "Sand Crawler"
  end

  test "get species 1" do
    assert Swapi.get_species("1")["name"] == "Human"
  end

  test "get planet 1" do
    assert Swapi.get_planet("1")["name"] == "Tatooine"
  end
end
