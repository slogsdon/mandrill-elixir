defmodule Mandrillex.Exports do
  @moduledoc """
  Exports calls for Mandrill.
  """

  @doc """
  Returns information about an export job. 
  If the export job's state is 'complete', 
  the returned data will include a URL you 
  can use to fetch the results. Every export 
  job produces a zip archive, but the format 
  of the archive is distinct for each job 
  type. The api calls that initiate exports 
  include more details about the output 
  format for that job type.
  """
  def info(id) do
    params = [
      key: Mandrillex.key,
      id: id
    ]
    Mandrillex.request("exports/info", params)
  end

  @doc """
  Returns a list of your exports.
  """
  def list do
    params = [ key: Mandrillex.key ]
    Mandrillex.request("exports/list", params)
  end

  @doc """
  Begins an export of your rejection 
  blacklist. The blacklist will be exported 
  to a zip archive containing a single file 
  named rejects.csv that includes the 
  following fields: email, reason, detail, 
  created_at, expires_at, last_event_at, 
  expires_at.
  """
  def rejects(notify_email) do
    params = [ 
      key: Mandrillex.key,
      notify_email: notify_email
    ]
    Mandrillex.request("exports/rejects", params)
  end

  @doc """
  Begins an export of your rejection 
  whitelist. The whitelist will be exported 
  to a zip archive containing a single file 
  named whitelist.csv that includes the 
  following fields: email, detail, 
  created_at.
  """
  def whitelist(notify_email) do
    params = [ 
      key: Mandrillex.key,
      notify_email: notify_email
    ]
    Mandrillex.request("exports/whitelist", params)
  end

  @doc """
  Begins an export of your activity history. 
  The activity will be exported to a zip 
  archive containing a single file named 
  activity.csv in the same format as you 
  would be able to export from your account's 
  activity view. It includes the following 
  fields: Date, Email Address, Sender, 
  Subject, Status, Tags, Opens, Clicks, 
  Bounce Detail. If you have configured any 
  custom metadata fields, they will be 
  included in the exported data.
  """
  def activity(notify_email, date_from, date_to, tags, senders, states, api_keys) do
    params = [ 
      key: Mandrillex.key,
      notify_email: notify_email,
      date_from: date_from,
      date_to: date_to,
      tags: tags,
      senders: senders,
      api_keys: api_keys
    ]
    Mandrillex.request("exports/activity", params)
  end
end