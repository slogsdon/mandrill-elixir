defmodule Mandrillex.Webhooks do
  @doc """
  Get the list of all webhooks 
  defined on the account
  """
  def list(key) do
  end

  @doc """
  Add a new webhook
  """
  def add(key, url, description, events) do
  end

  @doc """
  Given the ID of an existing 
  webhook, return the data about it
  """
  def info(key, id) do
  end

  @doc """
  Update an existing webhook
  """
  def update(key, id, url, description, events) do
  end

  @doc """
  Delete an existing webhook
  """
  def delete(key, id) do
  end
end