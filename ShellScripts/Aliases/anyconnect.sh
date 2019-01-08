#!/bin/bash
echo "Setting Cisco Anyconnect as default vpn"
echo '# Make anyconnect default vpn' >> ~/.bash_aliases
echo 'alias vpn=/opt/cisco/anyconnect/bin/vpn' >> ~/.bash_aliases
echo "Done Setting anyconnect as default vpn"
