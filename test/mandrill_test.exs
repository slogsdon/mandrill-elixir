defmodule MandrillTest do
  use ExUnit.Case

  test "the truth" do
    assert(true)
  end

  test "ping returns pong" do
    assert Mandrill.Users.ping() == "PONG!"
  end

  test "process_response_body returns a map with string keys" do
    assert Mandrill.process_response_body("{\"language\": \"elixir\", \"awesome\": true}") == %{
             "awesome" => true,
             "language" => "elixir"
           }
  end
end
