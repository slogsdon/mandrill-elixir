defmodule Mandrillex.Subaccounts do
  # Get the list of subaccounts defined for the account, optionally filtered by a prefix
  def list(key, q) do
  end

  # Add a new subaccount
  def add(key, id, name, notes, custom_quota) do
  end

  # Given the ID of an existing subaccount, return the data about it
  def info(key, id) do
  end

  # Update an existing subaccount
  def update(key, id, name, notes, custom_quota) do
  end

  # Delete an existing subaccount. Any email related to the subaccount will be saved, but stats will be removed and any future sending calls to this subaccount will fail.
  def delete(key, id) do
  end

  # Pause a subaccount's sending. Any future emails delivered to this subaccount will be queued for a maximum of 3 days until the subaccount is resumed.
  def pause(key, id) do
  end

  # Resume a paused subaccount's sending
  def resume(key, id) do
  end
end