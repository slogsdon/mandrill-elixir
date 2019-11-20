defmodule Mandrill do
  @moduledoc """
  An HTTP client for Mandrill.
  """
  use Tesla

  plug(Tesla.Middleware.BaseUrl, "https://mandrillapp.com/api/1.0/")
  plug(Tesla.Middleware.JSON)

  @doc """
  Creates the URL for our endpoint.
  Args:
    * endpoint - part of the API we're hitting
  Returns string
  """
  def process_url(endpoint) do
    "https://mandrillapp.com/api/1.0/" <> endpoint <> ".json"
  end

  @doc """
  Converts the binary keys in our response to strings.
  Args:
    * body - string binary response
  Returns Record or ArgumentError
  """
  def process_response_body(body) do
    json_library().decode!(body)
  end

  @doc """
  Boilerplate code to make requests.
  Args:
    * endpoint - string requested API endpoint
    * body - request body
  Returns dict
  """
  def request(endpoint, body) do
    body = json_library().encode!(Map.new(body))
    post!(endpoint <> ".json", body).body
  end

  @doc """
  Gets the api key from :mandrill, :key application env or
  MANDRILL_KEY from system ENV
  Returns binary
  """
  def key do
    Application.get_env(:mandrill, :key) || System.get_env("MANDRILL_KEY")
  end

  def json_library do
    Application.get_env(:mandrill, :json_library, Jason)
  end
end
