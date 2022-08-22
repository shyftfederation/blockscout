import Config

# DO NOT make it `:debug` or all Ecto logs will be shown for indexer
config :logger, :console, level: :warn

config :logger, :ecto,
  level: :debug,
  path: Path.absname("logs/dev/ecto.log")

config :logger, :error, path: Path.absname("logs/dev/error.log")

config :block_scout_web, BlockScoutWeb.Endpoint,
    http: [port: 4000]

config :explorer, Explorer.ExchangeRates, enabled: false, store: :ets

