defmodule Mandrillex.Mixfile do
  use Mix.Project

  def project do
    [ app: :mandrillex,
      version: "0.2.0",
      elixir: "~> 1.0",
      description: description,
      package: package,
      deps: deps ]
  end

  def application do
    [ mod: { Mandrillex, [] },
      applications: [:httpoison] ]
  end

  defp deps do
    [
      { :httpoison, "~> 0.3" },
      { :hackney, "~> 0.13.1" }, # not included in hex version of httpoison :(
      { :jsex, "~> 2.0.0" }
    ]
  end

  defp description do
    """
    A Mandrill wrapper for Elixir

    Requires an active account with Mandrill (http://mandrill.com).
    """
  end

  defp package do
    [ files: [ "lib", "mix.exs", "README.md", "LICENSE" ],
      contributors: [ "Shane Logsdon" ],
      licenses: [ "MIT" ],
      links: %{ "GitHub" => "https://github.com/slogsdon/mandrillex" } ]
  end
end
