defmodule Utils do
  def one(endpoint) do
    {status, res} = Request.fetch(endpoint)

    case {status, res} do
      {:ok, res} -> res
      {:err, err} -> err
    end
  end

  def all(endpoint, page_num \\ 1, results_list \\ []) do
    {status, res} = Request.fetch("#{endpoint}?page=#{page_num}")

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
