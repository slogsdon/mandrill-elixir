defmodule Mandrill.Templates do
  @moduledoc """
  Templates calls for Mandrill.
  """

  @doc """
  Add a new template
  """
  def add(params) when is_list(params) do
    Mandrill.request("templates/add", Enum.concat([key: Mandrill.key()], params))
  end

  def add(name, from_email, from_name, subject, code, text, publish, labels) do
    params = [
      key: Mandrill.key(),
      name: name,
      from_email: from_email,
      from_name: from_name,
      subject: subject,
      code: code,
      text: text,
      publish: publish,
      labels: labels
    ]

    Mandrill.request("templates/add", params)
  end

  @doc """
  Get the information for an existing 
  template
  """
  def info(params) when is_list(params) do
    Mandrill.request("templates/info", Enum.concat([key: Mandrill.key()], params))
  end

  def info(name) do
    params = [
      key: Mandrill.key(),
      name: name
    ]

    Mandrill.request("templates/info", params)
  end

  @doc """
  Update the code for an existing template. 
  If null is provided for any fields, the 
  values will remain unchanged.
  """
  def update(params) when is_list(params) do
    Mandrill.request("templates/update", Enum.concat([key: Mandrill.key()], params))
  end

  def update(name, from_email, from_name, subject, code, text, publish, labels) do
    params = [
      key: Mandrill.key(),
      name: name,
      from_email: from_email,
      from_name: from_name,
      subject: subject,
      code: code,
      text: text,
      publish: publish,
      labels: labels
    ]

    Mandrill.request("templates/update", params)
  end

  @doc """
  Publish the content for the template. Any 
  new messages sent using this template will 
  start using the content that was 
  previously in draft.
  """
  def publish(params) when is_list(params) do
    Mandrill.request("templates/publish", Enum.concat([key: Mandrill.key()], params))
  end

  def publish(name) do
    params = [
      key: Mandrill.key(),
      name: name
    ]

    Mandrill.request("templates/publish", params)
  end

  @doc """
  Delete a template
  """
  def delete(params) when is_list(params) do
    Mandrill.request("templates/delete", Enum.concat([key: Mandrill.key()], params))
  end

  def delete(name) do
    params = [
      key: Mandrill.key(),
      name: name
    ]

    Mandrill.request("templates/delete", params)
  end

  @doc """
  Return a list of all the templates 
  available to this user
  """
  def list(params) when is_list(params) do
    Mandrill.request("templates/list", Enum.concat([key: Mandrill.key()], params))
  end

  def list(label) do
    params = [
      key: Mandrill.key(),
      label: label
    ]

    Mandrill.request("templates/list", params)
  end

  @doc """
  Return the recent history (hourly stats for 
  the last 30 days) for a template
  """
  def time_series(params) when is_list(params) do
    Mandrill.request("templates/time-series", Enum.concat([key: Mandrill.key()], params))
  end

  def time_series(name) do
    params = [
      key: Mandrill.key(),
      name: name
    ]

    Mandrill.request("templates/time-series", params)
  end

  @doc """
  Inject content and optionally merge fields 
  into a template, returning the HTML that results
  """
  def render(params) when is_list(params) do
    Mandrill.request("templates/render", Enum.concat([key: Mandrill.key()], params))
  end

  def render(template_name, template_content, merge_vars) do
    params = [
      key: Mandrill.key(),
      template_name: template_name,
      template_content: template_content,
      merge_vars: merge_vars
    ]

    Mandrill.request("templates/render", params)
  end
end
