#!/bin/bash
echo '' >> ~/.bashrc
echo '# Setup Gurobi Environment Variables' >> ~/.bashrc
echo 'export GUROBI_HOME="/opt/gurobi810/linux64"' >> ~/.bashrc
echo 'export PATH="${PATH}:${GUROBI_HOME}/bin"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"' >> ~/.bashrc
