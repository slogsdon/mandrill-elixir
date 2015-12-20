# Mandrill [![Hex.pm](https://img.shields.io/hexpm/v/mandrill.svg)](https://hex.pm/packages/mandrill) [![Docs](https://img.shields.io/badge/docs-latest-brightgreen.svg?style=flat)](http://hexdocs.pm/mandrill/0.4.1/)

A Mandrill wrapper for Elixir.

## Installation

Add ``mandrill`` to your dependencies in your ``mix.exs``.

```Elixir
defp deps do
  [...
   {:mandrill, "~> 0.4"}]
end
```

## Usage

> ##### Note
> You must provide a valid api key, either through the mix config value
> `:mandrill, :key`, or the `MANDRILL_KEY` environment variable.

```elixir
iex> Mandrill.start
:ok

iex> Mandrill.key
"your_key"

iex> Mandrill.Users.info
[username: "your_username", created_at: "2013-12-05 00:24:19.47554",
 public_id: "your_public_id", reputation: 0, hourly_quota: 25,
 backlog: 0,
 stats: [today: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_7_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_30_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_60_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_90_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  all_time: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0]]]

iex> Mandrill.Users.info[:username]
"your_username"
```

## Reference

See [Mandrill's API docs](https://mandrillapp.com/api/docs/).

## Dependencies

- [HTTPoison](https://github.com/edgurgel/httpoison)
- [JSEX](https://github.com/talentdeficit/jsex)

## License

See [LICENSE](https://github.com/slogsdon/mandrill/blob/master/LICENSE)

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/949f7db1a2574d19a36cf9a21a760a6a "githalytics.com")](http://githalytics.com/slogsdon/mandrill)
