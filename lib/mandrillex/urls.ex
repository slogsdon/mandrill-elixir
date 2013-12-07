defmodule Mandrillex.Urls do
  @moduledoc """
  Urls calls for Mandrill.
  """

  @doc """
  Get the 100 most clicked URLs
  """
  def list do
    params = [ key: Mandrillex.key ]
    Mandrillex.request("urls/list", params)
  end

  @doc """
  Return the 100 most clicked URLs that 
  match the search query given
  """
  def search(params) when is_list(params) do
    Mandrillex.request("urls/search", Enum.concat([key: Mandrillex.key], params))
  end
  def search(q) do
    params = [ 
      key: Mandrillex.key,
      q: q
    ]
    Mandrillex.request("urls/search", params)
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for a url
  """
  def time_series(params) when is_list(params) do
    Mandrillex.request("urls/time-series", Enum.concat([key: Mandrillex.key], params))
  end
  def time_series(url) do
    params = [ 
      key: Mandrillex.key,
      url: url
    ]
    Mandrillex.request("urls/time-series", params)
  end

  @doc """
  Get the list of tracking domains set up 
  for this account
  """
  def tracking_domains do
    params = [ key: Mandrillex.key ]
    Mandrillex.request("urls/tracking-domain", params)
  end

  @doc """
  Add a tracking domain to your account
  """
  def add_tracking_domain(params) when is_list(params) do
    Mandrillex.request("urls/add-tracking-domain", Enum.concat([key: Mandrillex.key], params))
  end
  def add_tracking_domain(domain) do
    params = [ 
      key: Mandrillex.key,
      domain: domain
    ]
    Mandrillex.request("urls/add-tracking-domain", params)
  end

  @doc """
  Checks the CNAME settings for a tracking 
  domain. The domain must have been added 
  already with the add-tracking-domain call
  """
  def check_tracking_domain(params) when is_list(params) do
    Mandrillex.request("urls/check-tracking-domain", Enum.concat([key: Mandrillex.key], params))
  end
  def check_tracking_domain(domain) do
    params = [ 
      key: Mandrillex.key,
      domain: domain
    ]
    Mandrillex.request("urls/check-tracking-domain", params)
  end
end