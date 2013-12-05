defmodule Mandrillex.Templates do
  @doc """
  Add a new template
  """
  def add(key, name, from_email, from_name, subject, code, text, publish, labels) do
  end

  @doc """
  Get the information for an existing 
  template
  """
  def info(key, name) do
  end

  @doc """
  Update the code for an existing template. 
  If null is provided for any fields, the 
  values will remain unchanged.
  """
  def update(key, name, from_email, from_name, subject, code, text, publish, labels) do
  end

  @doc """
  Publish the content for the template. Any 
  new messages sent using this template will 
  start using the content that was 
  previously in draft.
  """
  def publish(key, name) do
  end

  @doc """
  Delete a template
  """
  def delete(key, name) do
  end

  @doc """
  Return a list of all the templates 
  available to this user
  """
  def list(key, label) do
  end

  @doc """
  Return the recent history (hourly stats for 
  the last 30 days) for a template
  """
  def time_series(key, name) do
  end

  @doc """
  Inject content and optionally merge fields 
  into a template, returning the HTML that results
  """
  def render(key, template_name, template_content, merge_vars) do
  end
end