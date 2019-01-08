#!/bin/bash
echo "Update Ubuntu packages and libraries? (y/n)"
read UpdateUbuntu

echo "Install Atom? (y/n)"
read Atom

echo "Will you use nodeJS? (y/n)"
read NodeJS

echo "Will you use python36? (y/n)"
read Py36

echo "Setup WSL Aliases? (y/n)"
read WSL

echo "Setup Remote services for XRDP and SSH? (y/n)"
read Remote

echo "Setup postgresql and mysql? (y/n)"
read Databases

echo "Are all above Selections Correct? (y/n)"
read Correct

if [ "$Correct" == "y" ];
then
  touch ~/StartLog.txt
  echo "Custom Start Installation Starting" | tee -a ~/StartLog.txt
  touch ~/.bash_aliases | tee -a ~/StartLog.txt
  ./Basics/HelperBasics.sh
  if [ "$UpdateUbuntu" == "y" ];
  then
    ./Basics/QuickStartBasics.sh
  fi
  if [ "$Atom" == "y" ];
  then
    ./Basics/AtomBasics.sh
  fi
  if [ "$NodeJs" == "y" ];
  then
    ./Basics/NodeBasics.sh
  fi
  if [ "$Py36" == "y" ];
  then
    ./Basics/PythonBasics.sh
  fi
  if [ "$WSL" == "y" ];
  then
    ./Basics/WSLBasics.sh
  fi
  if [ "$Remote" == "y" ];
  then
    ./Basics/RemoteBasics.sh
  fi
  if [ "$Databases" == "y" ];
  then
    ./Basics/DatabaseBasics.sh
  fi
else
  echo "Restarting Process."
  ./CustomStart.sh
  exit 1
fi
