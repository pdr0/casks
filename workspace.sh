#!/bin/bash
: '
The following script installs the applications needed for your environment
'

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing homebrew"
git clone https://github.com/Homebrew/brew homebrew

echo "Adding brew command command to PATH"
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

echo "Testing brew"
brew install hello

echo "Installing midori Browser"
sudo apt update && sudo apt install midori

echo "Download WebStorm"
wget "https://download-cdn.jetbrains.com/webstorm/WebStorm-2022.1.1.tar.gz"
echo "Decompressing WebStorm"
tar -xf WebStorm-2022.1.1.tar.gz

:'
Installing Docker from its own repository.
Setting up repository
'

sudo apt-get update
sudo apt-get install \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


:'
Installing Docker Engine
'
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

:'Testing installation of Docker
Running Hello World
'

sudo docker run hello-world

:'
Install NodeJS
Install NPM (Node Package Manager)
Install n as nodeJs Version manager
'
sudo apt install nodejs
sudo apt install npm
npm install -g n

:'
Manual Steps:
- Midori: Add it to favourites menu
- WebStorm: License, Install Material UI, Material icons
'