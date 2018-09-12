#!/bin/bash
touch ~/StartLog.txt
./ShellScripts/UbuntuUpdate.sh &>~/StartLog.txt
./ShellScripts/InstallPython.sh &>~/StartLog.txt
./ShellScripts/AutoGit.sh &>~/StartLog.txt
./ShellScripts/InstallJava.sh &>~/StartLog.txt
touch ~/.bash_aliases &>~/StartLog.txt
./ShellScripts/Python3Default.sh &>~/StartLog.txt
./ShellScripts/VirtualenvQuickAccess.sh &>~/StartLog.txt
./ShellScripts/InstallNVM.sh &>~/StartLog.txt
./ShellScripts/InstallYarn.sh &>~/StartLog.txt
./ShellScripts/InstallAtom.sh &>~/StartLog.txt
vi ~/StartLog.txt
