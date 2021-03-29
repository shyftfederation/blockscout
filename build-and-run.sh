systemctl stop shyft-bx
mix deps.get
mix phx.digest.clean
mix do local.rebar --force, deps.compile --all, compile, ecto.migrate
cd apps/block_scout_web/assets; npm install && node_modules/webpack/bin/webpack.js --mode production; cd -
cd apps/explorer && npm install; cd -
mix phx.digest
systemctl restart shyft-bx
