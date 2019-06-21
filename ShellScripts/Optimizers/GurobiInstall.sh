#!/bin/bash
#Download Gurobi from Web and put in /opt
#Get Licence From Web
#Close out of all bash windows if in windows
#Start Terminal as Root
echo "What is your gurobi key?"
read gurobikey

./AutoGurobi.sh
export PATH=$PATH:/opt/gurobi810/linux64/bin

cd /opt
tar xvzf gurobi8.1.0_linux64.tar.gz
chmod -R 777 gurobi810

#Exit out of root and then apply the gurobi licence
#Apply Licence
grbgetkey $gurobikey

#Inside of a virtualenv navigate to gurobi810 and setup gurobipy
# (venv) ... $ cd /opt/gurobi810/linux64
# (venv) ... $ python setup.py install

#Check Licence
# gurobi.sh
