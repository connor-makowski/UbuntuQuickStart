#!/bin/bash
touch ~/StartLog.txt
echo "WSL Quickstart" | tee -a ~/StartLog.txt
touch ~/.bash_aliases | tee -a ~/StartLog.txt
./Basics/HelperBasics.sh
./Basics/QuickStartBasics.sh
./Basics/PythonBasics.sh
./Basics/NodeBasics.sh
./Basics/WSLBasics.sh
