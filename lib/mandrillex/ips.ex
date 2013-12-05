defmodule Mandrillex.Ips do
  @doc """
  Lists your dedicated IPs.
  """
  def list(key) do
  end

  @doc """
  Retrieves information about a single 
  dedicated ip.
  """
  def info(key, ip) do
  end
  
  @doc """
  Requests an additional dedicated IP for your 
  account. Accounts may have one outstanding 
  request at any time, and provisioning 
  requests are processed within 24 hours.
  """
  def provision(key, warmup, pool) do
  end
  
  @doc """
  Begins the warmup process for a dedicated IP. 
  During the warmup process, Mandrill will 
  gradually increase the percentage of your 
  mail that is sent over the warming-up IP, 
  over a period of roughly 30 days. The rest of 
  your mail will be sent over shared IPs or 
  other dedicated IPs in the same pool.
  """
  def start_warmup(key, ip) do
  end
  
  @doc """
  Cancels the warmup process for a dedicated IP.
  """
  def cancel_warmup(key, ip) do
  end
  
  @doc """
  Moves a dedicated IP to a different pool.
  """
  def set_pool(key, ip, pool, create_pool) do
  end
  
  @doc """
  Deletes a dedicated IP. This is permanent and 
  cannot be undone.
  """
  def delete(key, ip) do
  end
  
  @doc """
  Lists your dedicated IP pools.
  """
  def list_pools(key) do
  end
  
  @doc """
  Describes a single dedicated IP pool.
  """
  def pool_info(key, pool) do
  end
  
  @doc """
  Creates a pool and returns it. If a pool 
  already exists with this name, no action will 
  be performed.
  """
  def create_pool(key, pool) do
  end
  
  @doc """
  Deletes a pool. A pool must be empty before 
  you can delete it, and you cannot delete your 
  default pool.
  """
  def delete_pool(key, pool) do
  end
  
  @doc """
  Tests whether a domain name is valid for use as 
  the custom reverse DNS for a dedicated IP.
  """
  def check_custom_dns(key, ip, domain) do
  end
  
  @doc """
  Configures the custom DNS name for a dedicated 
  IP.
  """
  def set_custom_dns(key, ip, domain) do
  end
end