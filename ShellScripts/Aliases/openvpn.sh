#!/bin/bash
echo "Setup alias for connecting to openvpn"
echo '# Make openvpn connection alias' >> ~/.bash_aliases
echo "alias ovpn='openvpn --config ~/config.ovpn'" >> ~/.bash_aliases
echo "Done setting up open vpn alias"
