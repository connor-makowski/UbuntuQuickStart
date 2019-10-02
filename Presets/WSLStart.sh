#!/bin/bash
touch ~/StartLog.txt
echo "WSL Quickstart" | tee -a ~/StartLog.txt
./ShellScripts/Update/UbuntuUpdate.sh
./ShellScripts/Helpers/General.sh
./ShellScripts/Remote/RemoteServices.sh
./ShellScripts/NodeJS/InstallNVM.sh
./ShellScripts/Python/InstallPython3.sh
./ShellScripts/Python/Python3Default.sh
./ShellScripts/Python/VirtualenvQuickAccess.sh
