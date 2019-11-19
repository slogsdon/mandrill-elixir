defmodule Mandrill.Messages do
  @moduledoc """
  Messages calls for Mandrill.
  """

  @doc """
  Send a new transactional message through 
  Mandrill
  """
  def send(params) when is_list(params) do
    Mandrill.request("messages/send", Enum.concat([key: Mandrill.key()], params))
  end

  def send(message, async, ip_pool, send_at) do
    params = [
      key: Mandrill.key(),
      message: message,
      async: async,
      ip_pool: ip_pool,
      send_at: send_at
    ]

    Mandrill.request("messages/send", params)
  end

  @doc """
  Send a new transactional message through 
  Mandrill using a template
  """
  def send_template(params) when is_list(params) do
    Mandrill.request("messages/send-template", Enum.concat([key: Mandrill.key()], params))
  end

  def send_template(template_name, template_content, message, async, ip_pool, send_at) do
    params = [
      key: Mandrill.key(),
      template_name: template_name,
      template_content: template_content,
      message: message,
      async: async,
      ip_pool: ip_pool,
      send_at: send_at
    ]

    Mandrill.request("messages/send-template", params)
  end

  @doc """
  Search the content of recently sent messages 
  and optionally narrow by date range, tags 
  and senders
  """
  def search(params) when is_list(params) do
    Mandrill.request("messages/search", Enum.concat([key: Mandrill.key()], params))
  end

  def search(query, date_from, date_to, tags, senders, api_keys, limit) do
    params = [
      key: Mandrill.key(),
      query: query,
      date_from: date_from,
      date_to: date_to,
      tags: tags,
      senders: senders,
      api_keys: api_keys,
      limit: limit
    ]

    Mandrill.request("messages/search", params)
  end

  @doc """
  Search the content of recently sent messages 
  and return the aggregated hourly stats for 
  matching messages
  """
  def search_time_series(params) when is_list(params) do
    Mandrill.request("messages/search-time-series", Enum.concat([key: Mandrill.key()], params))
  end

  def search_time_series(query, date_from, date_to, tags, senders) do
    params = [
      key: Mandrill.key(),
      query: query,
      date_from: date_from,
      date_to: date_to,
      tags: tags,
      senders: senders
    ]

    Mandrill.request("messages/search-time-series", params)
  end

  @doc """
  Get the information for a single recently 
  sent message
  """
  def info(params) when is_list(params) do
    Mandrill.request("messages/info", Enum.concat([key: Mandrill.key()], params))
  end

  def info(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("messages/info", params)
  end

  @doc """
  Get the full content of a recently sent 
  message
  """
  def content(params) when is_list(params) do
    Mandrill.request("messages/content", Enum.concat([key: Mandrill.key()], params))
  end

  def content(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("messages/content", params)
  end

  @doc """
  Parse the full MIME document for an email 
  message, returning the content of the 
  message broken into its constituent pieces
  """
  def parse(params) when is_list(params) do
    Mandrill.request("messages/parse", Enum.concat([key: Mandrill.key()], params))
  end

  def parse(raw_message) do
    params = [
      key: Mandrill.key(),
      raw_message: raw_message
    ]

    Mandrill.request("messages/parse", params)
  end

  @doc """
  Take a raw MIME document for a message, and 
  send it exactly as if it were sent through 
  Mandrill's SMTP servers
  """
  def send_raw(params) when is_list(params) do
    Mandrill.request("messages/send-raw", Enum.concat([key: Mandrill.key()], params))
  end

  def send_raw(
        raw_message,
        from_email \\ nil,
        from_name \\ nil,
        to \\ nil,
        async,
        ip_pool,
        send_at,
        return_path_domain
      ) do
    params = [
      key: Mandrill.key(),
      raw_message: raw_message,
      from_email: from_email,
      from_name: from_name,
      to: to,
      async: async,
      ip_pool: ip_pool,
      send_at: send_at,
      return_path_domain: return_path_domain
    ]

    Mandrill.request("messages/send-raw", params)
  end

  @doc """
  Queries your scheduled emails by sender or 
  recipient, or both.
  """
  def list_scheduled(params) when is_list(params) do
    Mandrill.request("messages/list-scheduled", Enum.concat([key: Mandrill.key()], params))
  end

  def list_scheduled(to) do
    params = [
      key: Mandrill.key(),
      to: to
    ]

    Mandrill.request("messages/list-scheduled", params)
  end

  @doc """
  Cancels a scheduled email.
  """
  def cancel_scheduled(params) when is_list(params) do
    Mandrill.request("messages/cancel-scheduled", Enum.concat([key: Mandrill.key()], params))
  end

  def cancel_scheduled(id) do
    params = [
      key: Mandrill.key(),
      id: id
    ]

    Mandrill.request("messages/cancel-scheduled", params)
  end

  @doc """
  Reschedules a scheduled email.
  """
  def reschedule(params) when is_list(params) do
    Mandrill.request("messages/reschedule", Enum.concat([key: Mandrill.key()], params))
  end

  def reschedule(id, send_at) do
    params = [
      key: Mandrill.key(),
      id: id,
      send_At: send_at
    ]

    Mandrill.request("messages/reschedule", params)
  end
end
