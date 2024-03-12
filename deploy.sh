#!/bin/bash

# This script Serves as the deploment guide for PathAI Boston newhire company macbooks
#Written and Maintained by Zach Perry

# Wait for dock before executing the rest of the script
# This prevents the script from executing before the
# setup assistant is finished
while true;	do
	myUser=`whoami`
	dockcheck=`ps -ef | grep [/]System/Library/CoreServices/Dock.app/Contents/MacOS/Dock`
	echo "Waiting for file as: ${myUser}"
	sudo echo "Waiting for file as: ${myUser}" >> /var/log/jamf.log
	echo "regenerating dockcheck as ${dockcheck}."

	if [ ! -z "${dockcheck}" ]; then
		echo "Dockcheck is ${dockcheck}, breaking."
		break
	fi
	sleep 1
done

#Do not let the computer Sleep during Process
sudo systemsetup -setcomputersleep Never
sudo pmset disablesleep 1

#Add pathai local admin user account
sudo jamf policy -id 106
sleep 2

#Set Hostname to Computer name
sudo jamf policy -id 218
sleep 2

#1pass
sudo jamf policy -id 240
sleep 2

#Google Chrome
sudo jamf policy -id 231
sleep 2

#Google Drive
sudo jamf policy -id 248
sleep 2

#Zoom
sudo jamf policy -id 232
sleep 2

#Crowdstrike 
sudo jamf policy -id 235
sleep 2

#Duo 
sudo jamf policy -id 224
sleep 2

#Global Protect 
sudo jamf policy -id 239
sleep 2

#Arrange Dock
sudo jamf policy -id 252
sleep 5

#Enable Filevault
sudo jamf policy -id 72
sleep 5

#Download and Configure AWS CLI
sudo jamf policy -id 255
sleep 5

#Download HP Printer Drivers for 1325 Boylston
sudo jamf policy -id 225
sleep 5

#Turn Back on Computer Sleep during Process
sudo pmset disablesleep 0                                                                                              [10:26:04 AM]
sudo systemsetup -setcomputersleep 5m
sleep 5

#Enable Battery Percentage
sudo jamf policy -id 251
sleep 60

#Reboot to Finish FileVault Startup and Software Updates
sudo reboot
