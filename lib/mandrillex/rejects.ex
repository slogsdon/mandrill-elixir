defmodule Mandrillex.Rejects do
  @moduledoc """
  Rejects calls for Mandrill.
  """

  @doc """ 
  Adds an email to your email rejection 
  blacklist. Addresses that you add manually 
  will never expire and there is no 
  reputation penalty for removing them from 
  your blacklist. Attempting to blacklist an 
  address that has been whitelisted will 
  have no effect.
  """
  def add(params) when is_list(params) do
    Mandrillex.request("rejects/add", Enum.concat([key: Mandrillex.key], params))
  end
  def add(email, comment, subaccount) do
    params = [ 
      key: Mandrillex.key,
      email: email,
      comment: comment,
      subaccount: subaccount
    ]
    Mandrillex.request("rejects/add", params)
  end

  @doc """ 
  Retrieves your email rejection blacklist. 
  You can provide an email address to limit 
  the results. Returns up to 1000 results. 
  By default, entries that have expired are 
  excluded from the results; set 
  include_expired to true to include them.
  """
  def list(params) when is_list(params) do
    Mandrillex.request("rejects/list", Enum.concat([key: Mandrillex.key], params))
  end
  def list(email, include_expired, subaccount) do
    params = [ 
      key: Mandrillex.key,
      email: email,
      include_expired: include_expired,
      subaccount: subaccount
    ]
    Mandrillex.request("rejects/list", params)
  end

  @doc """
  Deletes an email rejection. There is no 
  limit to how many rejections you can 
  remove from your blacklist, but keep in 
  mind that each deletion has an affect on 
  your reputation.
  """
  def delete(params) when is_list(params) do
    Mandrillex.request("rejects/delete", Enum.concat([key: Mandrillex.key], params))
  end
  def delete(email, subaccount) do
    params = [ 
      key: Mandrillex.key,
      email: email,
      subaccount: subaccount
    ]
    Mandrillex.request("rejects/delete", params)
  end
end