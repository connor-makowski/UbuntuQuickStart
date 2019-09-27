#!/bin/bash
echo "Installing Python, pip and virtualenv"
sudo apt install python3 -y
sudo apt install python3-pip -y
python3 -m pip install virtualenv
echo "Python, pip and virtualenv installation complete"
