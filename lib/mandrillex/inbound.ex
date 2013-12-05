defmodule Mandrillex.Inbound do
  # List the domains that have been configured for inbound delivery
  def domains(key) do
  end

  # Add an inbound domain to your account
  def add_domain(key, domain) do
  end

  # Check the MX settings for an inbound domain. The domain must have already been added with the add-domain call
  def check_domain(key, domain) do
  end

  # Delete an inbound domain from the account. All mail will stop routing for this domain immediately.
  def delete_domain(key, domain) do
  end

  # List the mailbox routes defined for an inbound domain
  def routes(key, domain) do
  end

  # Add a new mailbox route to an inbound domain
  def add_route(key, domain, pattern, url) do
  end

  # Update the pattern or webhook of an existing inbound mailbox route. If null is provided for any fields, the values will remain unchanged.
  def update_route(key, id, pattern, url) do
  end

  # Delete an existing inbound mailbox route
  def delete_route(key, id) do
  end

  # Take a raw MIME document destined for a domain with inbound domains set up, and send it to the inbound hook exactly as if it had been sent over SMTP
  def send_raw(key, raw_message, to // nil, mail_from, helo, client_address) do
  end
end