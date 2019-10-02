#!/bin/bash
echo "Choose QuickStart module:"
echo "(1): Server QuickStart - For CAVE Servers"
echo "(2): Ubuntu QuickStart - For Ubuntu Machines"
echo "(3): WSL QuickStart - For Ubuntu on WSL Machines"
echo "(4): Custom Start - For custom uses"
echo "(5): Exit"
echo "Enter you choice as a number below"
read QSMod

if [ "$QSMod" == "1" ];
then
  echo "Server Quickstart? (y/n)"
  read confirm

  if [ "$confirm" == "y" ];
  then
    echo "Running Server Quickstart"
    ./Presets/ServerStart.sh
  else
    echo "Restarting Process"
    ./QuickStart.sh
    exit 1
  fi
fi

if [ "$QSMod" == "2" ];
then
  echo "Generic Ubuntu Quickstart? (y/n)"
  read confirm

  if [ "$confirm" == "y" ];
  then
    echo "Running Ubuntu Quickstart"
    ./Presets/GenericStart.sh
  else
    echo "Restarting Process"
    ./QuickStart.sh
    exit 1
  fi
fi

if [ "$QSMod" == "3" ];
then
  echo "WSL Quickstart? (y/n)"
  read confirm

  if [ "$confirm" == "y" ];
  then
    echo "Running WSL Quickstart"
    ./Presets/WSLStart.sh
  else
    echo "Restarting Process"
    ./QuickStart.sh
    exit 1
  fi
fi

if [ "$QSMod" == "4" ];
then
  echo "Custom Start? (y/n)"
  read confirm

  if [ "$confirm" == "y" ];
  then
    echo "Running Custom Start"
    ./Presets/CustomStart.sh
  else
    echo "Restarting Process"
    ./QuickStart.sh
    exit 1
  fi
fi

if [ "$QSMod" == "5" ];
then
  exit 1
fi

for i in 1 2 3 4; do
  if [ "$QSMod" == "$i" ];
  then
    echo "Installation Complete!"
    echo "If you will be using git, make sure to run GitCredentials.sh next."
    exit 1
  fi
done
echo "Invalid Input, Try Again."
./QuickStart.sh
exit 1
