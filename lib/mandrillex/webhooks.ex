defmodule Mandrillex.Webhooks do
  @moduledoc """
  Webhooks calls for Mandrill.
  """

  @doc """
  Get the list of all webhooks 
  defined on the account
  """
  def list do
    params = [ key: Mandrillex.key ]
    Mandrillex.request("webhooks/list", params)
  end

  @doc """
  Add a new webhook
  """
  def add(url, description, events) do
    params = [ 
      key: Mandrillex.key,
      url: url,
      description: description,
      events: events
    ]
    Mandrillex.request("webhooks/add", params)
  end

  @doc """
  Given the ID of an existing 
  webhook, return the data about it
  """
  def info(id) do
    params = [ 
      key: Mandrillex.key,
      id: id
    ]
    Mandrillex.request("webhooks/info", params)
  end

  @doc """
  Update an existing webhook
  """
  def update(id, url, description, events) do
    params = [ 
      key: Mandrillex.key,
      id: id,
      url: url,
      description: description,
      events: events
    ]
    Mandrillex.request("webhooks/update", params)
  end

  @doc """
  Delete an existing webhook
  """
  def delete(id) do
    params = [ 
      key: Mandrillex.key,
      id: id
    ]
    Mandrillex.request("webhooks/delete", params)
  end
end