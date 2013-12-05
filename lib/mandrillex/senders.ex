defmodule Mandrillex.Senders do
  @doc """
  Return the senders that have tried to 
  use this account.
  """
  def list(key) do
  end

  @doc """
  Returns the sender domains that have 
  been added to this account.
  """
  def domains(key) do
  end

  @doc """
  Adds a sender domain to your account. 
  Sender domains are added automatically 
  as you send, but you can use this call 
  to add them ahead of time.
  """
  def add_domain(key, domain) do
  end

  @doc """
  Checks the SPF and DKIM settings for a 
  domain. If you haven't already added 
  this domain to your account, it will be 
  added automatically.
  """
  def check_domain(key, domain) do
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
  def verify_domain(key, domain, mailbox) do
  end

  @doc """
  Return more detailed information about a 
  single sender, including aggregates of 
  recent stats
  """
  def info(key, address) do
  end

  @doc """
  Return the recent history (hourly stats 
  for the last 30 days) for a sender
  """
  def time_series(key, address) do
  end
end