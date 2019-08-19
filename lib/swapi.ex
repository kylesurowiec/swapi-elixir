defmodule Swapi do
  def get_person(id) do
    Utils.one("/people/#{id}/")
  end

  def get_all_people() do
    Utils.all("/people/")
  end

  def get_film(id) do
    Utils.one("/films/#{id}/")
  end

  def get_all_films do
    Utils.all("/films/")
  end

  def get_starship(id) do
    Utils.one("/starships/#{id}/")
  end

  def get_all_starships do
    Utils.all("/starships/")
  end

  def get_vehicle(id) do
    Utils.one("/vehicles/#{id}/")
  end

  def get_all_vehicles do
    Utils.all("/vehicles/")
  end

  def get_species(id) do
    Utils.one("/species/#{id}/")
  end

  def get_all_species do
    Utils.all("/species/")
  end

  def get_planet(id) do
    Utils.one("/planets/#{id}/")
  end

  # TODO: Recurse through all pages
  def get_all_planets do
    Utils.all("/planets/")
  end
end
