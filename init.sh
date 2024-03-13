sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sudo sed -i 's/http:/https:/g' /etc/apt/sources.list
sudo apt-get update

apt-get install -y curl dnsutils iputils-ping wget vim git fish python3
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
# curl https://hishtory.dev/install.py | python3 -
chsh -s /usr/bin/fish

dpkg-reconfigure -f noninteractive tzdata
sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen 
sed -i -e 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/' /etc/locale.gen 
echo 'LANG="en_US.UTF-8"'>/etc/default/locale
dpkg-reconfigure --frontend=noninteractive locales
update-locale LANG=en_US.UTF-8

sudo timedatectl set-timezone Asia/Shanghai
