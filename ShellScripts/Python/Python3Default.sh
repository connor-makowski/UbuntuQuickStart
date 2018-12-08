#!/bin/bash
echo "Setting Python3 as default Python"
echo '# Change Default Python to Python3' >> ~/.bash_aliases
echo 'alias python=python3' >> ~/.bash_aliases
echo 'alias pip=pip3' >> ~/.bash_aliases
echo 'alias makevenv=python -m virtualenv venv'
echo "Done Setting python3 as default"
