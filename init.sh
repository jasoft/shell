apt-get update
apt-get install -y dnsutils iputils-ping wget vim git fish python3
curl -L https://get.oh-my.fish | fish
fish -c "omf install bobthefish"
fish -c "omf install z"
fish -c "omf install fzf"
fish -c "omf install pj"
curl https://hishtory.dev/install.py | python3 -
chsh -s /usr/bin/fish
