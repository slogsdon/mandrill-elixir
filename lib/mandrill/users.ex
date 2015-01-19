defmodule Mandrill.Users do
  @moduledoc """
  Users calls for Mandrill.
  """

  @doc """
  Return the information about the 
  API-connected user
  """
  def info do
    params = [ key: Mandrill.key ]
    Mandrill.request("users/info", params)
  end

  @doc """
  Validate an API key and respond to 
  a ping
  """
  def ping do
    params = [ key: Mandrill.key ]
    Mandrill.request("users/ping", params)
  end
  
  @doc """
  Validate an API key and respond to a 
  ping (anal JSON parser version)
  """
  def ping2 do
    params = [ key: Mandrill.key ]
    Mandrill.request("users/ping2", params)
  end
  
  @doc """
  Return the senders that have tried to 
  use this account, both verified and 
  unverified
  """
  def senders do
    params = [ key: Mandrill.key ]
    Mandrill.request("users/senders", params)
  end
end