#!/bin/bash
touch ~/StartLog.txt
./ShellScripts/UbuntuUpdate.sh &>~/StartLog.txt
./ShellScripts/InstallPython.sh &>~/StartLog.txt
./ShellScripts/MultiGit.sh &>~/StartLog.txt
./ShellScripts/InstallJava.sh &>~/StartLog.txt
touch ~/.bash_aliases &>~/StartLog.txt
./ShellScripts/Python3Default.sh &>~/StartLog.txt
./ShellScripts/WinQuickAccess.sh &>~/StartLog.txt
./ShellScripts/VirtualenvQuickAccess.sh &>~/StartLog.txt
./ShellScripts/InstallNVM.sh &>~/StartLog.txt
./ShellScripts/InstallYarn.sh &>~/StartLog.txt
vi ~/StartLog.txt
