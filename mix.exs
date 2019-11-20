defmodule Mandrill.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mandrill,
      version: "0.5.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:tesla, ">= 0.0.0"},
      {:ex_doc, ">= 0.0.0", optional: true},
      {:jason, ">= 0.0.0", only: :test, optional: true},
      {:hackney, ">= 0.0.0", only: :test}
    ]
  end

  defp description do
    """
    A Mandrill wrapper for Elixir

    Requires an active account with Mandrill (http://mandrill.com).
    """
  end

  defp package do
    [
      name: :mandrill,
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Shane Logsdon"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/slogsdon/mandrill-elixir"}
    ]
  end
end
