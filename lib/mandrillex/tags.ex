defmodule Mandrillex.Tags do
  # Return all of the user-defined tag information
  def list(key) do
  end

  # Deletes a tag permanently. Deleting a tag removes the tag from any messages that have been sent, and also deletes the tag's stats. There is no way to undo this operation, so use it carefully.
  def delete(key, tag) do
  end

  # Return more detailed information about a single tag, including aggregates of recent stats
  def info(key, tag) do
  end

  # Return the recent history (hourly stats for the last 30 days) for a tag
  def time_series(key, tag) do
  end

  # Return the recent history (hourly stats for the last 30 days) for all tags
  def all_time_series(key) do
  end
end