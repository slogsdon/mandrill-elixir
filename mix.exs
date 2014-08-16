defmodule Mandrillex.Mixfile do
  use Mix.Project

  def project do
    [ app: :mandrillex,
      version: "0.2.0",
      elixir: "~> 0.15.0",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Mandrillex, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      { :httpoison, "~> 0.3" },
      { :hackney, "~> 0.13.1" }, # not included in hex version of httpoison :(
      { :jsex, "~> 2.0.0" } 
    ]
  end
end
