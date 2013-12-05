defmodule Mandrillex.Messages do
  @doc """
  Send a new transactional message through 
  Mandrill
  """
  def send(key, message, async, ip_pool, send_at) do
  end
  
  @doc """
  Send a new transactional message through 
  Mandrill using a template
  """
  def send_template(key, template_name, template_content, message, async, ip_pool, send_at) do
  end
  
  @doc """
  Search the content of recently sent messages 
  and optionally narrow by date range, tags 
  and senders
  """
  def search(key, query, date_from, date_to, tags, senders, api_keys, limit) do
  end
  
  @doc """
  Search the content of recently sent messages 
  and return the aggregated hourly stats for 
  matching messages
  """
  def search_time_series(key, query, date_from, date_to, tags, senders) do
  end
  
  @doc """
  Get the information for a single recently 
  sent message
  """
  def info(key, id) do
  end
  
  @doc """
  Get the full content of a recently sent 
  message
  """
  def content(key, id) do
  end
  
  @doc """
  Parse the full MIME document for an email 
  message, returning the content of the 
  message broken into its constituent pieces
  """
  def parse(key, raw_message) do
  end
  
  @doc """
  Take a raw MIME document for a message, and 
  send it exactly as if it were sent through 
  Mandrill's SMTP servers
  """
  def send_raw(key, raw_message, from_email // nil, from_name // nil, to // nil, async, ip_pool, send_at, return_path_domain) do
  end
  
  @doc """
  Queries your scheduled emails by sender or 
  recipient, or both.
  """
  def list_scheduled(key, to) do
  end
  
  @doc """
  Cancels a scheduled email.
  """
  def cancel_scheduled(key, id) do
  end
  
  @doc """
  Reschedules a scheduled email.
  """
  def reschedule(key, id, send_at) do
  end
end