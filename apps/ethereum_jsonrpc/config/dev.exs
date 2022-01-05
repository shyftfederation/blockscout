use Mix.Config

config :ethereum_jsonrpc, EthereumJSONRPC.Tracer, env: "dev", disabled?: true

config :logger, :ethereum_jsonrpc,
  level: :warn,
  path: Path.absname("logs/dev/ethereum_jsonrpc.log")
