defmodule Swapi.MixProject do
  use Mix.Project

  def project do
    [
      app: :swapi,
      description: description(),
      package: package(),
      version: "1.0.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    "An API wrapper for https://swapi.co built with Elixir"
  end

  defp package() do
    [
      name: "swapi_elixir",
      files: ~w(lib .formatter.exs mix.exs README.md LICENSE),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/kylesurowiec/swapi-elixir"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.0.0"},
      {:jason, ">= 1.1.2"}
    ]
  end
end
