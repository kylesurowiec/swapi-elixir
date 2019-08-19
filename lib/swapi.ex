defmodule Swapi do
  def get_person(id) do
    Request.one("/people/#{id}/")
  end

  def get_all_people() do
    Request.all("/people/")
  end

  def get_film(id) do
    Request.one("/films/#{id}/")
  end

  def get_all_films do
    Request.all("/films/")
  end

  def get_starship(id) do
    Request.one("/starships/#{id}/")
  end

  def get_all_starships do
    Request.all("/starships/")
  end

  def get_vehicle(id) do
    Request.one("/vehicles/#{id}/")
  end

  def get_all_vehicles do
    Request.all("/vehicles/")
  end

  def get_species(id) do
    Request.one("/species/#{id}/")
  end

  def get_all_species do
    Request.all("/species/")
  end

  def get_planet(id) do
    Request.one("/planets/#{id}/")
  end

  def get_all_planets do
    Request.all("/planets/")
  end
end
