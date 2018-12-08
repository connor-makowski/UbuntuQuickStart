#!/bin/bash
echo "Adding Quick Access for virtualenvs"
echo '#Quick Access to venv activation' >> ~/.bash_aliases
echo 'alias makevenv="python -m virtualenv venv"' >> ~/.bash_aliases
echo 'alias vact="source venv/bin/activate"' >> ~/.bash_aliases
echo "Done adding quick access for virtualenvs"
