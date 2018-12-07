#!/bin/bash
touch ~/StartLog.txt
echo "Ubuntu Quickstart" &>~/StartLog.txt
touch ~/.bash_aliases &>~/StartLog.txt
./Basics/HelperBasics.sh
./Basics/QuickStartBasics.sh
./Basics/PythonBasics.sh
./Basics/NodeBasics.sh
./Basics/AtomBasics.sh
