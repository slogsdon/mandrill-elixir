defmodule Mandrillex.Templates do
  @moduledoc """
  Templates calls for Mandrill.
  """

  @doc """
  Add a new template
  """
  def add(name, from_email, from_name, subject, code, text, publish, labels) do
    params = [ 
      key: Mandrillex.key,
      name: name, 
      from_email: from_email,
      from_name: from_name,
      subject: subject,
      code: code,
      text: text,
      publish: publish,
      labels: labels
    ]
    Mandrillex.request("templates/add", params)
  end

  @doc """
  Get the information for an existing 
  template
  """
  def info(name) do
    params = [ 
      key: Mandrillex.key,
      name: name
    ]
    Mandrillex.request("templates/info", params)
  end

  @doc """
  Update the code for an existing template. 
  If null is provided for any fields, the 
  values will remain unchanged.
  """
  def update(name, from_email, from_name, subject, code, text, publish, labels) do
    params = [ 
      key: Mandrillex.key,
      name: name,
      from_email: from_email,
      from_name: from_name,
      subject: subject,
      code: code,
      text: text,
      publish: publish,
      labels: labels 
    ]
    Mandrillex.request("templates/update", params)
  end

  @doc """
  Publish the content for the template. Any 
  new messages sent using this template will 
  start using the content that was 
  previously in draft.
  """
  def publish(name) do
    params = [ 
      key: Mandrillex.key,
      name: name
    ]
    Mandrillex.request("templates/publish", params)
  end

  @doc """
  Delete a template
  """
  def delete(name) do
    params = [ 
      key: Mandrillex.key,
      name: name 
    ]
    Mandrillex.request("templates/delete", params)
  end

  @doc """
  Return a list of all the templates 
  available to this user
  """
  def list(label) do
    params = [ 
      key: Mandrillex.key,
      label: label
    ]
    Mandrillex.request("templates/list", params)
  end

  @doc """
  Return the recent history (hourly stats for 
  the last 30 days) for a template
  """
  def time_series(name) do
    params = [ 
      key: Mandrillex.key,
      name: name
    ]
    Mandrillex.request("templates/time-series", params)
  end

  @doc """
  Inject content and optionally merge fields 
  into a template, returning the HTML that results
  """
  def render(template_name, template_content, merge_vars) do
    params = [ 
      key: Mandrillex.key,
      template_name: template_name,
      template_content: template_content,
      merge_vars: merge_vars 
    ]
    Mandrillex.request("templates/render", params)
  end
end