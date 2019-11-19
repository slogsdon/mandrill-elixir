defmodule Mandrill do
  @moduledoc """
  An HTTP client for Mandrill.
  """

  # Let's build on top of HTTPoison
  use Application
  use HTTPoison.Base

  def start(_type, _args) do
    Mandrill.Supervisor.start_link()
  end

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
    Mandrill.post!(endpoint, json_library().encode!(body)).body
  end

  @doc """
  Gets the api key from :mandrill, :key application env or
  MANDRILL_KEY from system ENV
  Returns binary
  """
  def key do
    Application.get_env(:mandrill, :key) ||
      System.get_env("MANDRILL_KEY")
  end

  def json_library do
    Application.get_env(:mandrill, :json_library, Jason)
  end
end
