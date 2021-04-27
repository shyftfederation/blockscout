wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
dpkg -i erlang-solutions_2.0_all.deb
apt update

apt install esl-erlang elixir  zlib1g-dev libsnappy-dev libgmp-dev inotify-tools jq wajig build-essential \
			 libtool automake npm rustc postgresql-12 letsencrypt

apt install ngrep pwgen figlet screen


figlet machinename /etc/motd
echo machinename >/etc/hostname
apt -y upgrade && apt clean && reboot

su - postgres
pwgen 8 1 
createuser -s -P blockscout
createdb -O blockscout blockscout

certbot -d domainname.xyz certonly


cd /opt
git clone git@github.com:ShyftNetwork/blockscout

cd blockscout
vi shyft-bx.service     # put your postgres password in here also your 

cp shyft-bx.service /etc/systemd/system/
systemctl daemon-reload

mix local.hex --force
mix local.rebar --force
mix deps.get
DATABASE_URL="postgres://localhost/blockscout?user=blockscout&password=Aijeegh3" mix ecto.migrate
./build-and-run.sh

journalctl -f -u shyft-bx

.... then wait a long time.



