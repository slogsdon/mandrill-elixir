defmodule MandrillTest do
  use ExUnit.Case

  test "ping returns pong" do
  	Mandrill.start
  	assert Mandrill.Users.ping == "PONG!"
  end

  test "process_response_body returns a map with string keys" do
    result = Mandrill.process_response_body(
      "{\"language\": \"elixir\", \"awesome\": true}"
    )
    assert result == %{"awesome" => true, "language" => "elixir"}
  end
end
