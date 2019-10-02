#!/bin/bash
echo "Installing OpenVpn"
sudo apt-get install openvpn -y
echo "Setup alias for connecting to openvpn"
echo '# Make openvpn connection alias' >> ~/.bash_aliases
echo "alias ovpn='sudo openvpn --config ~/config.ovpn'" >> ~/.bash_aliases
echo "Done setting up open vpn alias"
