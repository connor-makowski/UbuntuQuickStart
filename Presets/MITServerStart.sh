#!/bin/bash
touch ~/StartLog.txt
echo "Server Quickstart" | tee -a ~/StartLog.txt
./ShellScripts/Update/UbuntuUpdate.sh
./ShellScripts/Helpers/General.sh
./ShellScripts/Remote/RemoteServices.sh
./ShellScripts/NodeJS/InstallNVM.sh
./ShellScripts/Python/InstallPython3.sh
./ShellScripts/Python/Python3Default.sh
./ShellScripts/Python/VirtualenvQuickAccess.sh
./ShellScripts/Editors/InstallAtom.sh


./ShellScripts/Databases/MySQL.sh
./ShellScripts/Databases/Postgresql.sh
./ShellScripts/NodeJs/InstallYarn.sh
