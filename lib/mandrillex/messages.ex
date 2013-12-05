defmodule Mandrillex.Messages do
  # Send a new transactional message through Mandrill
  def send(key, message, async, ip_pool, send_at) do
  end
  
  # Send a new transactional message through Mandrill using a template
  def send_template(key, template_name, template_content, message, async, ip_pool, send_at) do
  end
  
  # Search the content of recently sent messages and optionally narrow by date range, tags and senders
  def search(key, query, date_from, date_to, tags, senders, api_keys, limit) do
  end
  
  # Search the content of recently sent messages and return the aggregated hourly stats for matching messages
  def search_time_series(key, query, date_from, date_to, tags, senders) do
  end
  
  # Get the information for a single recently sent message
  def info(key, id) do
  end
  
  # Get the full content of a recently sent message
  def content(key, id) do
  end
  
  # Parse the full MIME document for an email message, returning the content of the message broken into its constituent pieces
  def parse(key, raw_message) do
  end
  
  # Take a raw MIME document for a message, and send it exactly as if it were sent through Mandrill's SMTP servers
  def send_raw(key, raw_message, from_email // nil, from_name // nil, to // nil, async, ip_pool, send_at, return_path_domain) do
  end
  
  # Queries your scheduled emails by sender or recipient, or both.
  def list_scheduled(key, to) do
  end
  
  # Cancels a scheduled email.
  def cancel_scheduled(key, id) do
  end
  
  # Reschedules a scheduled email.
  def reschedule(key, id, send_at) do
  end
end