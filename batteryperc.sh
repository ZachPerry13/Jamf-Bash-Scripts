#!/bin/bash -x

#_user=`who | grep console | awk '{ print $1 }'`
echo $HOME

sudo -u defaults write $HOME/Library/Preferences/ByHost/com.apple.controlcenter.plist BatteryShowPercentage -bool false