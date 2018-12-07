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
    echo "Do you plan to use multiple Git Accounts? (y/n)"
    echo "Enter anything else (or x) if you do not plan to use git."
    read multigit
    if [ "$multigit" == "y" ];
    then
      ./ShellScripts/Git/MultiGit.sh
    else
      if [ "$multigit" == "n" ];
      then
        ./ShellScripts/Git/AutoGit.sh
      else
        echo "No Git Shortcut added"
      fi
    fi
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
  echo "Ubuntu Quickstart? (y/n)"
  read confirm

  if [ "$confirm" == "y" ];
  then
    echo "Do you plan to use multiple Git Accounts? (y/n)"
    echo "Enter anything else (or x) if you do not plan to use git."
    read multigit
    if [ "$multigit" == "y" ];
    then
      ./ShellScripts/Git/MultiGit.sh
    else
      if [ "$multigit" == "n" ];
      then
        ./ShellScripts/Git/AutoGit.sh
      else
        echo "No Git Shortcut added"
      fi
    fi
    echo "Running Ubuntu Quickstart"
    ./Presets/UbuntuStart.sh
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
    echo "Do you plan to use multiple Git Accounts? (y/n)"
    echo "Enter anything else (or x) if you do not plan to use git."
    read multigit
    if [ "$multigit" == "y" ];
    then
      ./ShellScripts/Git/MultiGit.sh
    else
      if [ "$multigit" == "n" ];
      then
        ./ShellScripts/Git/AutoGit.sh
      else
        echo "No Git Shortcut added"
      fi
    fi
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
    echo "Do you plan to use multiple Git Accounts? (y/n)"
    echo "Enter anything else (or x) if you do not plan to use git."
    read multigit
    if [ "$multigit" == "y" ];
    then
      ./ShellScripts/Git/MultiGit.sh
    else
      if [ "$multigit" == "n" ];
      then
        ./ShellScripts/Git/AutoGit.sh
      else
        echo "No Git Shortcut added"
      fi
    fi
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
else
  exit 1
fi

echo "Installation Complete!"
echo "If you will be using git, make sure to run GitCredentials.sh next."
echo "GitCredentials.sh should be run as a regular user and not super user."
