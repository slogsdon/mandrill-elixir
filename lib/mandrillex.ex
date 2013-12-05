defmodule Mandrillex do
  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    Mandrillex.Supervisor.start_link
  end

  defrecord Error, 
    status: nil, 
    code: nil, 
    name: nil, 
    message: nil

  ## Users
  defrecord Info,
    username: nil,
    created_at: nil,
    public_id: nil,
    reputation: nil,
    hourly_quota: nil,
    backlog: nil,
    stats: Stats

  defrecord Stats,
    today: StatList,
    last_30_days: StatList,
    last_60_days: StatList,
    last_90_days: StatList,
    all_time: StatList

  defrecord StatList,
    sent: 0,
    hard_bounces: 0,
    soft_bounces: 0,
    rejects: 0,
    complaints: 0,
    unsubs: 0,
    opens: 0,
    unique_opens: 0,
    clicks: 0,
    unique_clicks: 0

  defrecord Ping2,
    PING: nil
  
  defrecord Sender,
    address: nil,
    created_at: nil,
    sent: nil,
    hard_bounces: nil,
    soft_bounces: nil,
    rejects: nil,
    complaints: nil,
    unsubs: nil,
    opens: nil,
    clicks: nil,
    unique_opens: nil,
    unique_clicks: nil

  ## Messages

end
