defmodule Mandrillex.Senders do
  # Return the senders that have tried to use this account.
  def list(string key) do
  end

  # Returns the sender domains that have been added to this account.
  def domains(string key) do
  end

  # Adds a sender domain to your account. Sender domains are added automatically as you send, but you can use this call to add them ahead of time.
  def add_domain(string key, string domain) do
  end

  # Checks the SPF and DKIM settings for a domain. If you haven't already added this domain to your account, it will be added automatically.
  def check_domain(string key, string domain) do
  end

  # Sends a verification email in order to verify ownership of a domain. Domain verification is an optional step to confirm ownership of a domain. Once a domain has been verified in a Mandrill account, other accounts may not have their messages signed by that domain unless they also verify the domain. This prevents other Mandrill accounts from sending mail signed by your domain.
  def verify_domain(string key, string domain, string mailbox) do
  end

  # Return more detailed information about a single sender, including aggregates of recent stats
  def info(string key, string address) do
  end

  # Return the recent history (hourly stats for the last 30 days) for a sender
  def time_series(string key, string address) do
  end
end