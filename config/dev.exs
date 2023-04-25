import Config

# DO NOT make it `:debug` or all Ecto logs will be shown for indexer
config :logger, :console, level: :warn

config :logger, :ecto,
  level: :warn,
  path: Path.absname("logs/dev/ecto.log")

config :logger, :error, level: :info, path: Path.absname("logs/dev/error.log")

config :logger, :account,
  level: :warn,
  path: Path.absname("logs/dev/account.log"),
  metadata_filter: [fetcher: :account]

