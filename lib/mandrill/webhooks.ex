defmodule Mandrill.Webhooks do
  @moduledoc """
  Webhooks calls for Mandrill.
  """

  @doc """
  Get the list of all webhooks 
  defined on the account
  """
  def list do
    params = [ key: Mandrill.key ]
    Mandrill.request("webhooks/list", params)
  end

  @doc """
  Add a new webhook
  """
  def add(params) when is_list(params) do
    Mandrill.request("webhooks/add", Enum.concat([key: Mandrill.key], params))
  end
  def add(url, description, events) do
    params = [ 
      key: Mandrill.key,
      url: url,
      description: description,
      events: events
    ]
    Mandrill.request("webhooks/add", params)
  end

  @doc """
  Given the ID of an existing 
  webhook, return the data about it
  """
  def info(params) when is_list(params) do
    Mandrill.request("webhooks/info", Enum.concat([key: Mandrill.key], params))
  end
  def info(id) do
    params = [ 
      key: Mandrill.key,
      id: id
    ]
    Mandrill.request("webhooks/info", params)
  end

  @doc """
  Update an existing webhook
  """
  def update(params) when is_list(params) do
    Mandrill.request("webhooks/update", Enum.concat([key: Mandrill.key], params))
  end
  def update(id, url, description, events) do
    params = [ 
      key: Mandrill.key,
      id: id,
      url: url,
      description: description,
      events: events
    ]
    Mandrill.request("webhooks/update", params)
  end

  @doc """
  Delete an existing webhook
  """
  def delete(params) when is_list(params) do
    Mandrill.request("webhooks/delete", Enum.concat([key: Mandrill.key], params))
  end
  def delete(id) do
    params = [ 
      key: Mandrill.key,
      id: id
    ]
    Mandrill.request("webhooks/delete", params)
  end
end