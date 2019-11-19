defmodule Mandrill.Urls do
  @moduledoc """
  Urls calls for Mandrill.
  """

  @doc """
  Get the 100 most clicked URLs
  """
  def list do
    params = [key: Mandrill.key()]
    Mandrill.request("urls/list", params)
  end

  @doc """
  Return the 100 most clicked URLs that 
  match the search query given
  """
  def search(params) when is_list(params) do
    Mandrill.request("urls/search", Enum.concat([key: Mandrill.key()], params))
  end

  def search(q) do
    params = [
      key: Mandrill.key(),
      q: q
    ]

    Mandrill.request("urls/search", params)
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for a url
  """
  def time_series(params) when is_list(params) do
    Mandrill.request("urls/time-series", Enum.concat([key: Mandrill.key()], params))
  end

  def time_series(url) do
    params = [
      key: Mandrill.key(),
      url: url
    ]

    Mandrill.request("urls/time-series", params)
  end

  @doc """
  Get the list of tracking domains set up 
  for this account
  """
  def tracking_domains do
    params = [key: Mandrill.key()]
    Mandrill.request("urls/tracking-domain", params)
  end

  @doc """
  Add a tracking domain to your account
  """
  def add_tracking_domain(params) when is_list(params) do
    Mandrill.request("urls/add-tracking-domain", Enum.concat([key: Mandrill.key()], params))
  end

  def add_tracking_domain(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("urls/add-tracking-domain", params)
  end

  @doc """
  Checks the CNAME settings for a tracking 
  domain. The domain must have been added 
  already with the add-tracking-domain call
  """
  def check_tracking_domain(params) when is_list(params) do
    Mandrill.request("urls/check-tracking-domain", Enum.concat([key: Mandrill.key()], params))
  end

  def check_tracking_domain(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("urls/check-tracking-domain", params)
  end
end
