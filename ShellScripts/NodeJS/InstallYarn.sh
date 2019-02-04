#!/bin/bash
echo "Installing Yarn"
sudo apt remove cmdtest -y || true
sudo apt remove yarn -y || true
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update -y
sudo apt-get install yarn -y
sudo apt-get install --no-install-recommends yarn -y
echo "export PATH=$PATH:`yarn global bin`" >> ~/.bashrc
echo "Yarn Install Complete"
