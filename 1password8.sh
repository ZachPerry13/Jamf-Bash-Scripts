#!/bin/bash
sudo rm -vrf /Applications/1Password*;
sudo rm -vrf /tmp/1pass.zip;
sleep 2; 

# This script will download and install 1password on Mac OS X.

sudo curl -Lo /tmp/1pass8.zip https://downloads.1password.com/mac/1Password.zip;
sleep 2;
cd /tmp
sudo unzip -o 1pass8.zip;
sleep 2;
sudo open 1Password\ Installer.app/; 

rm -vrf /tmp/1*;


