#!/bin/bash
touch ~/StartLog.txt
echo "Ubuntu Quickstart" | tee -a ~/StartLog.txt
./ShellScripts/Update/UbuntuUpdate.sh
./ShellScripts/Helpers/General.sh
./ShellScripts/Remote/RemoteServices.sh
./ShellScripts/NodeJs/InstallNVM.sh
./ShellScripts/Python/InstallPython3.sh
./ShellScripts/Python/Python3Default.sh
./ShellScripts/Python/VirtualenvQuickAccess.sh
./ShellScripts/Editors/InstallAtom.sh
