defmodule MandrillTest do
  use ExUnit.Case

  test "the truth" do
    assert(true)
  end

  test "ping returns pong" do
    assert Mandrill.Users.ping() == "PONG!"
  end
end
