defmodule Kaffy.MixProject do
  use Mix.Project

  @version "0.8.0"

  def project do
    [
      app: :kaffy,
      version: @version,
      elixir: "~> 1.7",
      compilers: [:phoenix] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "Kaffy",
      source_url: "https://github.com/aesmail/kaffy",
      deps: deps(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Kaffy.Application, []},
      extra_applications: [:logger, :cachex]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.4"},
      {:phoenix_html, "~> 2.11"},
      {:ecto, "~> 3.0"},
      {:cachex, "~> 3.2"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Powerfully simple admin package for phoenix applications"
  end

  defp package() do
    [
      maintainers: ["Abdullah Esmail"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/aesmail/kaffy",
        "Demo" => "https://kaffy.gigalixirapp.com/admin/"
      }
    ]
  end

  def docs() do
    [
      main: "readme",
      name: "Kaffy",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/kaffy",
      source_url: "https://github.com/aesmail/kaffy",
      extras: [
        "README.md"
      ]
    ]
  end
end
