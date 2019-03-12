echo "Installing curl"
sudo apt-get install curl -y

echo "Installing xclip"
sudo apt-get install xclip -y

echo "Installing Git"
sudo apt-get install git -y

echo "Set up git default to not track filemodes"
git config --global core.filemode false
