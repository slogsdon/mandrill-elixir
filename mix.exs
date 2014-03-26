defmodule Mandrillex.Mixfile do
  use Mix.Project

  def project do
    [ app: :mandrillex,
      version: "0.1.0",
      elixir: "~> 0.12.1",
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
      { :hackney_lib, github: "benoitc/hackney_lib", tag: "0.2.2", override: true },
      { :httpoison, github: "edgurgel/httpoison", tag: "0.0.1" },
      { :jsex, github: "talentdeficit/jsex"} 
    ]
  end
end
