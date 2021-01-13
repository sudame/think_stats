# install development tools
apt-get update
apt-get install -y zsh software-properties-common
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 
apt-add-repository https://cli.github.com/packages 
apt-get update 
apt-get install -y gh 
apt-get clean 
rm -rf /var/lib/apt/lists/*

# change pip install path
mkdir -p /root/.pip/
cp .devcontainer/pip.conf /root/.pip/pip.conf

# install pip
pip install -r requirements.txt