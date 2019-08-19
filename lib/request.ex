defmodule Request do
  @moduledoc """
  SWAPI wrapper
  """
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://swapi.co/api")
  plug(Tesla.Middleware.JSON)

  defp fetch(url) do
    {:ok, response} = get("#{url}")

    case {response.status, response} do
      {200, res} -> {:ok, res.body}
      {_, res} -> {:err, "Invalid reqest: #{res.status} | #{res.url}"}
    end
  end

  def one(endpoint) do
    {status, res} = fetch(endpoint)

    case {status, res} do
      {:ok, res} -> res
      {:err, err} -> err
    end
  end

  def all(endpoint, page_num \\ 1, results_list \\ []) do
    {status, res} = fetch("#{endpoint}?page=#{page_num}")

    case {status, res} do
      {:ok, res} ->
        case res["next"] do
          nil ->
            results_list ++ res["results"]

          _ ->
            num =
              String.at(res["next"], -1)
              |> String.to_integer()

            all(endpoint, num, results_list ++ res["results"])
        end

      {:err, err} ->
        err
    end
  end
end
