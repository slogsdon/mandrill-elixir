defmodule Mandrillex.Urls do
  # Get the 100 most clicked URLs
  def list(key) do
  end

  # Return the 100 most clicked URLs that match the search query given
  def search(key, q) do
  end

  # Return the recent history (hourly stats for the last 30 days) for a url
  def time_series(key, url) do
  end

  # Get the list of tracking domains set up for this account
  def tracking_domains(key) do
  end

  # Add a tracking domain to your account
  def add_tracking_domain(key, domain) do
  end

  # Checks the CNAME settings for a tracking domain. The domain must have been added already with the add-tracking-domain call
  def check_tracking_domain(key, domain) do
  end
end