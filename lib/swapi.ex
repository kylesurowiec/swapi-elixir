defmodule Swapi do
    def get_people(id) do
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

    def get_films(id) do
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
end
