defmodule Mandrillex.Tags do
  @moduledoc """
  Tags calls for Mandrill.
  """

  @doc """
  Return all of the user-defined tag 
  information
  """
  def list do
    params = [ key: Mandrillex.key ]
    Mandrillex.request("tags/list", params)
  end

  @doc """
  Deletes a tag permanently. Deleting a tag 
  removes the tag from any messages that 
  have been sent, and also deletes the tag's 
  stats. There is no way to undo this 
  operation, so use it carefully.
  """
  def delete(tag) do
    params = [ 
      key: Mandrillex.key,
      tag: tag
    ]
    Mandrillex.request("tags/delete", params)
  end

  @doc """
  Return more detailed information about a 
  single tag, including aggregates of recent 
  stats
  """
  def info(tag) do
    params = [ 
      key: Mandrillex.key,
      tag: tag
    ]
    Mandrillex.request("tags/info", params)
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for a tag
  """
  def time_series(tag) do
    params = [ 
      key: Mandrillex.key,
      tag: tag
    ]
    Mandrillex.request("tags/time-series", params)
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for all tags
  """
  def all_time_series do
    params = [ key: Mandrillex.key ]
    Mandrillex.request("tags/all-time-series", params)
  end
end