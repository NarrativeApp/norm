defmodule Norm.MixProject do
  use Mix.Project

  def project do
    [
      app: :norm,
      version: "0.10.4",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "Norm",
      source_url: "https://github.com/keathley/norm",
      docs: docs()
    ]
  end

  def application do
    [
      env: [enable_contracts: true]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:stream_data, "~> 0.4.3", optional: true, only: [:dev, :test]},
      {:ex_doc, "~> 0.19", only: [:dev, :test]}
    ]
  end

  def description do
    """
    Norm is a system for specifying the structure of data. It can be used for
    validation and for generation of data. Norm does not provide any set of
    predicates and instead allows you to re-use any of your existing
    validations.
    """
  end

  def package do
    [
      name: "norm",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/keathley/norm"}
    ]
  end

  def docs do
    [
      source_ref: "v0.10.4",
      source_url: "https://github.com/keathley/norm",
      main: "Norm"
    ]
  end
end
