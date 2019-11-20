defmodule Mandrill.Subaccounts do
  @moduledoc """
  Subaccounts calls for Mandrill.
  """

  @doc """
  Get the list of subaccounts defined for 
  the account, optionally filtered by a 
  prefix
  """
  def list(params) when is_list(params) do
    Mandrill.request("subaccounts/list", Enum.concat([key: Mandrill.key()], params))
  end

  def list(q) do
    params = [
      key: Mandrill.key(),
      q: q
    ]

    Mandrill.request("subaccounts/list", params)
  end

  @doc """
  Add a new subaccount
  """
  def add(params) when is_list(params) do
    Mandrill.request("subaccounts/add", Enum.concat([key: Mandrill.key()], params))
  end

  def add(id, name, notes, custom_quota) do
    params = [
      key: Mandrill.key(),
      id: id,
      name: name,
      notes: notes,
      custom_quota: custom_quota
    ]

    Mandrill.request("subaccounts/add", params)
  end

  @doc """
  Given the ID of an existing subaccount, 
  return the data about it
  """
  def info(params) when is_list(params) do
    Mandrill.request("subaccounts/info", Enum.concat([key: Mandrill.key()], params))
  end

  def info(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("subaccounts/info", params)
  end

  @doc """
  Update an existing subaccount
  """
  def update(params) when is_list(params) do
    Mandrill.request("subaccounts/update", Enum.concat([key: Mandrill.key()], params))
  end

  def update(id, name, notes, custom_quota) do
    params = [
      key: Mandrill.key(),
      id: id,
      name: name,
      notes: notes,
      custom_quota: custom_quota
    ]

    Mandrill.request("subaccounts/update", params)
  end

  @doc """
  Delete an existing subaccount. Any email 
  related to the subaccount will be saved, 
  but stats will be removed and any future 
  sending calls to this subaccount will fail.
  """
  def delete(params) when is_list(params) do
    Mandrill.request("subaccounts/delete", Enum.concat([key: Mandrill.key()], params))
  end

  def delete(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("subaccounts/delete", params)
  end

  @doc """
  Pause a subaccount's sending. Any future 
  emails delivered to this subaccount will be 
  queued for a maximum of 3 days until the 
  subaccount is resumed.
  """
  def pause(params) when is_list(params) do
    Mandrill.request("subaccounts/pause", Enum.concat([key: Mandrill.key()], params))
  end

  def pause(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("subaccounts/pause", params)
  end

  @doc """
  Resume a paused subaccount's sending
  """
  def resume(params) when is_list(params) do
    Mandrill.request("subaccounts/resume", Enum.concat([key: Mandrill.key()], params))
  end

  def resume(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("subaccounts/resume", params)
  end
end
