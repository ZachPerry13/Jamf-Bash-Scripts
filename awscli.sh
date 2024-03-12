#!/bin/bash

# This script will download and install AWS ClI on Mac OS X.

cd ~/ 
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sleep 2
cd ~/ 
sudo installer -pkg ~/./AWSCLIV2.pkg -target /
sleep 2
which aws 
sleep 2
aws --version