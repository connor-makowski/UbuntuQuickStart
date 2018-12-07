#!/bin/bash
#Download Gurobi from Web and put in /opt
#Get Licence From Web
#Close out of all bash windows if in windows
#Start Terminal as Root
cd /opt
tar xvzf gurobi8.0.1_linux64.tar.gz
cd gurobi801/linux64/
python3 setup.py install
export PATH=$PATH:/opt/gurobi801/linux64/bin
grbgetkey {key pasted here}
./AutoGurobi.sh
#Check Licence
gurobi.sh