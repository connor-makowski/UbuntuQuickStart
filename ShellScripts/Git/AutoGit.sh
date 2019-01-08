#!/bin/bash
echo "Setting Up Git in .bashrc"
echo '# Add Git Profile' >> ~/.bashrc
echo 'eval $(ssh-agent -s) &>/dev/null' >> ~/.bashrc
echo 'ssh-add ~/.ssh/id_rsa &>/dev/null' >> ~/.bashrc

xclip -sel c < ~/.ssh/id_rsa.pub
