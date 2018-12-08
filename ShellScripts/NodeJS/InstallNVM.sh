#!/bin/bash
echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
command -v nvm
echo "NVM Install Complete"
echo "Installing Node 10.8.0"
nvm install v10.8.0
echo "Node Install Complete"
