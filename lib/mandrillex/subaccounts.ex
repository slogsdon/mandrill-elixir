defmodule Mandrillex.Subaccounts do
  @doc """
  Get the list of subaccounts defined for 
  the account, optionally filtered by a 
  prefix
  """
  def list(key, q) do
  end

  @doc """
  Add a new subaccount
  """
  def add(key, id, name, notes, custom_quota) do
  end

  @doc """
  Given the ID of an existing subaccount, 
  return the data about it
  """
  def info(key, id) do
  end

  @doc """
  Update an existing subaccount
  """
  def update(key, id, name, notes, custom_quota) do
  end

  @doc """
  Delete an existing subaccount. Any email 
  related to the subaccount will be saved, 
  but stats will be removed and any future 
  sending calls to this subaccount will fail.
  """
  def delete(key, id) do
  end

  @doc """
  Pause a subaccount's sending. Any future 
  emails delivered to this subaccount will be 
  queued for a maximum of 3 days until the 
  subaccount is resumed.
  """
  def pause(key, id) do
  end

  @doc """
  Resume a paused subaccount's sending
  """
  def resume(key, id) do
  end
end