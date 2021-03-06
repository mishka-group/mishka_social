defmodule MishkaSocial.MixProject do
  use Mix.Project
  @version "0.0.2"

  def project do
    [
      app: :mishka_social,
      version: @version,
      elixir: "~> 1.13",
      name: "Mishka Social",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      homepage_url: "https://github.com/mishka-group",
      source_url: "https://github.com/mishka-group/mishka_social",
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {MishkaSocial.Application, []}
    ]
  end

  defp deps do
    [
      {:mishka_installer, "~> 0.0.2"},
      {:ueberauth, "~> 0.7.0"},
      {:ueberauth_google, "~> 0.10.1"},
      {:ueberauth_github, "~> 0.8.1"},
      {:phoenix, "~> 1.6"},
      {:phoenix_live_view, "~> 0.17.7"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description() do
    "MishkaSocial is a plugin for MishkaCms as a social networking gateway"
  end

  defp package() do
    [
      files: ~w(lib .formatter.exs mix.exs LICENSE README*),
      licenses: ["Apache License 2.0"],
      maintainers: ["Shahryar Tavakkoli"],
      links: %{"GitHub" => "https://github.com/mishka-group/mishka_social"}
    ]
  end
end
