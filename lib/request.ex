defmodule Request do
  @moduledoc """
  SWAPI wrapper
  """
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://swapi.co/api")
  plug(Tesla.Middleware.JSON)

  def fetch(url) do
    {:ok, response} = get("#{url}")

    case {response.status, response} do
      {200, res} -> {:ok, res.body}
      {_, res} -> {:err, "Invalid reqest: #{res.status} | #{res.url}"}
    end
  end
end
