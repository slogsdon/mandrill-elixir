defmodule Mandrillex.Rejects do
  # Retrieves your email rejection blacklist. You can provide an email address to limit the results. Returns up to 1000 results. By default, entries that have expired are excluded from the results; set include_expired to true to include them.
  def add(key, email, comment, subaccount) do
  end

  # Adds an email to your email rejection blacklist. Addresses that you add manually will never expire and there is no reputation penalty for removing them from your blacklist. Attempting to blacklist an address that has been whitelisted will have no effect.
  def list(key, email, include_expired, subaccount) do
  end

  # Deletes an email rejection. There is no limit to how many rejections you can remove from your blacklist, but keep in mind that each deletion has an affect on your reputation.
  def delete(key, email, subaccount) do
  end
end