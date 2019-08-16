defmodule SwapiTest do
  use ExUnit.Case
  doctest Swapi

  test "greets the world" do
    assert Swapi.hello() == :world
  end
end
