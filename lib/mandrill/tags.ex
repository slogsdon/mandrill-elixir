defmodule Mandrill.Tags do
  @moduledoc """
  Tags calls for Mandrill.
  """

  @doc """
  Return all of the user-defined tag 
  information
  """
  def list do
    params = [key: Mandrill.key()]
    Mandrill.request("tags/list", params)
  end

  @doc """
  Deletes a tag permanently. Deleting a tag 
  removes the tag from any messages that 
  have been sent, and also deletes the tag's 
  stats. There is no way to undo this 
  operation, so use it carefully.
  """
  def delete(params) when is_list(params) do
    Mandrill.request("tags/delete", Enum.concat([key: Mandrill.key()], params))
  end

  def delete(tag) do
    params = [
      key: Mandrill.key(),
      tag: tag
    ]

    Mandrill.request("tags/delete", params)
  end

  @doc """
  Return more detailed information about a 
  single tag, including aggregates of recent 
  stats
  """
  def info(params) when is_list(params) do
    Mandrill.request("tags/info", Enum.concat([key: Mandrill.key()], params))
  end

  def info(tag) do
    params = [
      key: Mandrill.key(),
      tag: tag
    ]

    Mandrill.request("tags/info", params)
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for a tag
  """
  def time_series(params) when is_list(params) do
    Mandrill.request("tags/time-series", Enum.concat([key: Mandrill.key()], params))
  end

  def time_series(tag) do
    params = [
      key: Mandrill.key(),
      tag: tag
    ]

    Mandrill.request("tags/time-series", params)
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for all tags
  """
  def all_time_series do
    params = [key: Mandrill.key()]
    Mandrill.request("tags/all-time-series", params)
  end
end
