defmodule Mandrillex.Subaccounts do
  @moduledoc """
  Subaccounts calls for Mandrill.
  """

  @doc """
  Get the list of subaccounts defined for 
  the account, optionally filtered by a 
  prefix
  """
  def list(params) when is_list(params) do
    Mandrillex.request("subaccounts/list", Enum.concat([key: Mandrillex.key], params))
  end
  def list(q) do
    params = [ 
      key: Mandrillex.key,
      q: q 
    ]
    Mandrillex.request("subaccounts/list", params)
  end

  @doc """
  Add a new subaccount
  """
  def add(params) when is_list(params) do
    Mandrillex.request("subaccounts/add", Enum.concat([key: Mandrillex.key], params))
  end
  def add(id, name, notes, custom_quota) do
    params = [ 
      key: Mandrillex.key,
      id: id,
      name: name,
      notes: notes,
      custom_quota: custom_quota
    ]
    Mandrillex.request("subaccounts/add", params)
  end

  @doc """
  Given the ID of an existing subaccount, 
  return the data about it
  """
  def info(params) when is_list(params) do
    Mandrillex.request("subaccounts/info", Enum.concat([key: Mandrillex.key], params))
  end
  def info(id) do
    params = [ 
      key: Mandrillex.key,
      id: id
    ]
    Mandrillex.request("subaccounts/info", params)
  end

  @doc """
  Update an existing subaccount
  """
  def update(params) when is_list(params) do
    Mandrillex.request("subaccounts/update", Enum.concat([key: Mandrillex.key], params))
  end
  def update(id, name, notes, custom_quota) do
    params = [ 
      key: Mandrillex.key,
      id: id,
      name: name,
      notes: notes,
      custom_quota: custom_quota
    ]
    Mandrillex.request("subaccounts/update", params)
  end

  @doc """
  Delete an existing subaccount. Any email 
  related to the subaccount will be saved, 
  but stats will be removed and any future 
  sending calls to this subaccount will fail.
  """
  def delete(params) when is_list(params) do
    Mandrillex.request("subaccounts/delete", Enum.concat([key: Mandrillex.key], params))
  end
  def delete(id) do
    params = [ 
      key: Mandrillex.key,
      id: id 
    ]
    Mandrillex.request("subaccounts/delete", params)
  end

  @doc """
  Pause a subaccount's sending. Any future 
  emails delivered to this subaccount will be 
  queued for a maximum of 3 days until the 
  subaccount is resumed.
  """
  def pause(params) when is_list(params) do
    Mandrillex.request("subaccounts/pause", Enum.concat([key: Mandrillex.key], params))
  end
  def pause(id) do
    params = [ 
      key: Mandrillex.key,
      id: id
    ]
    Mandrillex.request("subaccounts/pause", params)
  end

  @doc """
  Resume a paused subaccount's sending
  """
  def resume(params) when is_list(params) do
    Mandrillex.request("subaccounts/resume", Enum.concat([key: Mandrillex.key], params))
  end
  def resume(id) do
    params = [ 
      key: Mandrillex.key,
      id: id 
    ]
    Mandrillex.request("subaccounts/resume", params)
  end
end