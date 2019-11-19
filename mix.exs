defmodule Mandrill.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mandrill,
      version: "0.5.0",
      elixir: "~> 1.0",
      description: description,
      package: package,
      deps: deps
    ]
  end

  def application do
    [mod: {Mandrill, []}, applications: [:httpoison, :exjsx]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.6"},
      {:exjsx, "~> 3.2.0", app: false},
      {:ex_doc, "~> 0.6.1", only: :docs},
      {:earmark, "~> 0.1.12", only: :docs}
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
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Shane Logsdon"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/slogsdon/mandrill-elixir"}
    ]
  end
end
