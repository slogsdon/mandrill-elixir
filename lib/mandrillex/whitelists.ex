defmodule Mandrillex.Whitelists do
  @moduledoc """
  Whitelists calls for Mandrill.
  """

  @doc """
  Adds an email to your email rejection 
  whitelist. If the address is currently 
  on your blacklist, that blacklist entry 
  will be removed automatically.
  """
  def add(email) do
    params = [ 
      key: Mandrillex.key,
      email: email 
    ]
    Mandrillex.request("whitelists/add", params)
  end

  @doc """
  Retrieves your email rejection whitelist. 
  You can provide an email address or 
  search prefix to limit the results. 
  Returns up to 1000 results.
  """
  def list(email) do
    params = [ 
      key: Mandrillex.key,
      email: email 
    ]
    Mandrillex.request("whitelists/list", params)
  end

  @doc """
  Removes an email address from the 
  whitelist.
  """
  def delete(email) do
    params = [ 
      key: Mandrillex.key,
      email: email 
    ]
    Mandrillex.request("whitelists/delete", params)
  end
end