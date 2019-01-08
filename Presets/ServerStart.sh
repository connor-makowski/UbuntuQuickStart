#!/bin/bash
touch ~/StartLog.txt
echo "Server Quickstart" | tee -a ~/StartLog.txt
touch ~/.bash_aliases | tee -a ~/StartLog.txt
./Basics/HelperBasics.sh
./Basics/RemoteBasics.sh
./Basics/QuickStartBasics.sh
./Basics/PythonBasics.sh
./Basics/NodeBasics.sh
./Basics/AtomBasics.sh
./Basics/DatabaseBasics.sh
