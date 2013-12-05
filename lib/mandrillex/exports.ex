defmodule Mandrillex.Exports do
  # Returns information about an export job. If the export job's state is 'complete', the returned data will include a URL you can use to fetch the results. Every export job produces a zip archive, but the format of the archive is distinct for each job type. The api calls that initiate exports include more details about the output format for that job type.
  def info(key, id) do
  end

  # Returns a list of your exports.
  def list(key) do
  end

  # Begins an export of your rejection blacklist. The blacklist will be exported to a zip archive containing a single file named rejects.csv that includes the following fields: email, reason, detail, created_at, expires_at, last_event_at, expires_at.
  def rejects(key, notify_email) do
  end

  # Begins an export of your rejection whitelist. The whitelist will be exported to a zip archive containing a single file named whitelist.csv that includes the following fields: email, detail, created_at.
  def whitelist(key, notify_email) do
  end

  # Begins an export of your activity history. The activity will be exported to a zip archive containing a single file named activity.csv in the same format as you would be able to export from your account's activity view. It includes the following fields: Date, Email Address, Sender, Subject, Status, Tags, Opens, Clicks, Bounce Detail. If you have configured any custom metadata fields, they will be included in the exported data.
  def activity(key, notify_email, date_from, date_to, tags, senders, states, api_keys) do
  end
end