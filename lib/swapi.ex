defmodule Swapi do
    def get_person(id) do
        {status, res} = Request.fetch("/people/#{id}")    
        
        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    # TODO: Recurse through all pages
    def get_all_people do
        {status, res} = Request.fetch("/people")
        
        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    def get_film(id) do
        {status, res} = Request.fetch("/films/#{id}")

        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    # TODO: Recurse through all pages
    def get_all_films do
        {status, res} = Request.fetch("/films")
        
        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    def get_starship(id) do
        {status, res} = Request.fetch("/starships/#{id}")

        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    # TODO: Recurse through all pages
    def get_all_starships do
        {status, res} = Request.fetch("/starships")
        
        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    def get_vehicle(id) do
        {status, res} = Request.fetch("/vehicles/#{id}")

        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    # TODO: Recurse through all pages
    def get_all_vehicles do
        {status, res} = Request.fetch("/vehicles")
        
        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    def get_species(id) do
        {status, res} = Request.fetch("/species/#{id}")

        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    # TODO: Recurse through all pages
    def get_all_species do
        {status, res} = Request.fetch("/species")
        
        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    def get_planet(id) do
        {status, res} = Request.fetch("/planets/#{id}")

        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

    # TODO: Recurse through all pages
    def get_all_planets do
        {status, res} = Request.fetch("/planets")
        
        case {status, res} do 
            {:ok, res} -> res
            {:err, err} -> err
        end
    end

end
