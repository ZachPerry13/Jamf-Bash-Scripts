#!/bin/bash

rm -vrf /Applications/Google\ Ch*;

# This script will download and install Google Chrome on Mac OS X.

curl -Lo /tmp/Google\ Chrome.dmg https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg;

hdiutil attach /tmp/Google\ Chrome.dmg;
ditto -rsrc /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/Google\ Chrome.app;
hdiutil detach /Volumes/Google\ Chrome;
rm /tmp/Google\ Chrome.dmg;
open /Applications/Google\ Chrome.app/; 
