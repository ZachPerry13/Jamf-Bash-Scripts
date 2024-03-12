#!/bin/bash
hdiutil detach /Volumes/Install\ Google\ Drive;
rm -vrf /Applications/Google\ Drive.app/
rm -vrf /tmp/Google\ Drive.dmg;
sleep 5  
# This script will download and install Google Drive on Mac OS X.

curl -Lo /tmp/Google\ Drive.dmg https://dl.google.com/drive-file-stream/GoogleDrive.dmg;

hdiutil attach /tmp/Google\ Drive.dmg;
sudo installer -package /Volumes/Install\ Google\ Drive/GoogleDrive.pkg -target /;
rm /tmp/Google\ Drive.dmg;
sleep 5;
open /Applications/Google\ Drive.app/;
