#!/bin/bash
echo '# Add Git Profile' >> ~/.bashrc
echo 'eval $(ssh-agent -s) &>/dev/null' >> ~/.bashrc
echo 'ssh-add ~/.ssh/id_rsa_personal &>/dev/null' >> ~/.bashrc
echo 'ssh-add ~/.ssh/id_rsa_work &>/dev/null' >> ~/.bashrc

touch ~/.ssh/config
echo 'Host personal.github.com' >> ~/.ssh/config
echo 'HostName github.com' >> ~/.ssh/config
echo 'PreferredAuthentications publickey' >> ~/.ssh/config
echo 'IdentityFile ~/.ssh/id_rsa_personal' >> ~/.ssh/config
echo '' >> ~/.ssh/config
echo 'Host work.github.com' >> ~/.ssh/config
echo 'HostName github.com' >> ~/.ssh/config
echo 'PreferredAuthentications publickey' >> ~/.ssh/config
echo 'IdentityFile ~/.ssh/id_rsa_work' >> ~/.ssh/config
echo '' >> ~/.ssh/config
echo 'Host github.com' >> ~/.ssh/config
echo 'HostName github.com' >> ~/.ssh/config
echo 'PreferredAuthentications publickey' >> ~/.ssh/config
echo 'IdentityFile ~/.ssh/id_rsa_work' >> ~/.ssh/config
echo '' >> ~/.ssh/config
echo 'Host github.mit.edu' >> ~/.ssh/config
echo 'HostName github.mit.edu' >> ~/.ssh/config
echo 'PreferredAuthentications publickey' >> ~/.ssh/config
echo 'IdentityFile ~/.ssh/id_rsa_work' >> ~/.ssh/config
