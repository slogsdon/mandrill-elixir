defmodule Mandrill.Senders do
  @moduledoc """
  Senders calls for Mandrill.
  """

  @doc """
  Return the senders that have tried to 
  use this account.
  """
  def list do
    params = [key: Mandrill.key()]
    Mandrill.request("senders/list", params)
  end

  @doc """
  Returns the sender domains that have 
  been added to this account.
  """
  def domains do
    params = [key: Mandrill.key()]
    Mandrill.request("senders/domains", params)
  end

  @doc """
  Adds a sender domain to your account. 
  Sender domains are added automatically 
  as you send, but you can use this call 
  to add them ahead of time.
  """
  def add_domain(params) when is_list(params) do
    Mandrill.request("senders/add-domain", Enum.concat([key: Mandrill.key()], params))
  end

  def add_domain(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("senders/add-domain", params)
  end

  @doc """
  Checks the SPF and DKIM settings for a 
  domain. If you haven't already added 
  this domain to your account, it will be 
  added automatically.
  """
  def check_domain(params) when is_list(params) do
    Mandrill.request("senders/check-domain", Enum.concat([key: Mandrill.key()], params))
  end

  def check_domain(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("senders/check-domain", params)
  end

  @doc """
  Sends a verification email in order to 
  verify ownership of a domain. Domain 
  verification is an optional step to 
  confirm ownership of a domain. Once a 
  domain has been verified in a Mandrill 
  account, other accounts may not have 
  their messages signed by that domain 
  unless they also verify the domain. 
  This prevents other Mandrill accounts 
  from sending mail signed by your domain.
  """
  def verify_domain(params) when is_list(params) do
    Mandrill.request("senders/verify-domain", Enum.concat([key: Mandrill.key()], params))
  end

  def verify_domain(domain, mailbox) do
    params = [
      key: Mandrill.key(),
      domain: domain,
      mailbox: mailbox
    ]

    Mandrill.request("senders/verify-domain", params)
  end

  @doc """
  Return more detailed information about a 
  single sender, including aggregates of 
  recent stats
  """
  def info(params) when is_list(params) do
    Mandrill.request("senders/info", Enum.concat([key: Mandrill.key()], params))
  end

  def info(address) do
    params = [
      key: Mandrill.key(),
      address: address
    ]

    Mandrill.request("senders/info", params)
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for a sender
  """
  def time_series(params) when is_list(params) do
    Mandrill.request("senders/time-series", Enum.concat([key: Mandrill.key()], params))
  end

  def time_series(address) do
    params = [
      key: Mandrill.key(),
      address: address
    ]

    Mandrill.request("senders/time-series", params)
  end
end
