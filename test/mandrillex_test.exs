defmodule MandrillexTest do
  use ExUnit.Case

  test "the truth" do
    assert(true)
  end

  test "ping returns pong" do
  	Mandrillex.start
  	assert Mandrillex.Users.ping == "PONG!"
  end
end
