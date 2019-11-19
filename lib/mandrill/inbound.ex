defmodule Mandrill.Inbound do
  @moduledoc """
  Inbound calls for Mandrill.
  """

  @doc """
  List the domains that have been configured 
  for inbound delivery
  """
  def domains do
    params = [key: Mandrill.key()]
    Mandrill.request("inbound/domains", params)
  end

  @doc """
  Add an inbound domain to your account
  """
  def add_domain(params) when is_list(params) do
    Mandrill.request("inbound/add_domain", Enum.concat([key: Mandrill.key()], params))
  end

  def add_domain(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("inbound/add-domain", params)
  end

  @doc """
  Check the MX settings for an inbound domain. 
  The domain must have already been added 
  with the add-domain call
  """
  def check_domain(params) when is_list(params) do
    Mandrill.request("inbound/check-domain", Enum.concat([key: Mandrill.key()], params))
  end

  def check_domain(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("inbound/check-domain", params)
  end

  @doc """
  Delete an inbound domain from the account. 
  All mail will stop routing for this domain 
  immediately.
  """
  def delete_domain(params) when is_list(params) do
    Mandrill.request("inbound/delete-domain", Enum.concat([key: Mandrill.key()], params))
  end

  def delete_domain(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("inbound/delete-domain", params)
  end

  @doc """
  List the mailbox routes defined for an 
  inbound domain
  """
  def routes(params) when is_list(params) do
    Mandrill.request("inbound/routes", Enum.concat([key: Mandrill.key()], params))
  end

  def routes(domain) do
    params = [
      key: Mandrill.key(),
      domain: domain
    ]

    Mandrill.request("inbound/routes", params)
  end

  @doc """
  Add a new mailbox route to an inbound domain
  """
  def add_route(params) when is_list(params) do
    Mandrill.request("inbound/add-route", Enum.concat([key: Mandrill.key()], params))
  end

  def add_route(domain, pattern, url) do
    params = [
      key: Mandrill.key(),
      domain: domain,
      pattern: pattern,
      url: url
    ]

    Mandrill.request("inbound/add-route", params)
  end

  @doc """
  Update the pattern or webhook of an existing 
  inbound mailbox route. If null is provided 
  for any fields, the values will remain 
  unchanged.
  """
  def update_route(params) when is_list(params) do
    Mandrill.request("inbound/update-route", Enum.concat([key: Mandrill.key()], params))
  end

  def update_route(id, pattern, url) do
    params = [
      key: Mandrill.key(),
      id: id,
      pattern: pattern,
      url: url
    ]

    Mandrill.request("inbound/update-route", params)
  end

  @doc """
  Delete an existing inbound mailbox route
  """
  def delete_route(params) when is_list(params) do
    Mandrill.request("inbound/delete-route", Enum.concat([key: Mandrill.key()], params))
  end

  def delete_route(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("inbound/delete-route", params)
  end

  @doc """
  Take a raw MIME document destined for a 
  domain with inbound domains set up, and send 
  it to the inbound hook exactly as if it had 
  been sent over SMTP
  """
  def send_raw(params) when is_list(params) do
    Mandrill.request("inbound/send-raw", Enum.concat([key: Mandrill.key()], params))
  end

  def send_raw(raw_message, to \\ nil, mail_from, helo, client_address) do
    params = [
      key: Mandrill.key(),
      raw_message: raw_message,
      to: to,
      mail_from: mail_from,
      helo: helo,
      client_address: client_address
    ]

    Mandrill.request("inbound/send-raw", params)
  end
end
