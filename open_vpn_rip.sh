if [ -x /Applications/GlobalProtect.app ]; then
  echo "Program exists"
  echo "No need to try to download Global Protect"
  echo "Now Deleting Open VPN"
  rm -vrf /Applications/OpenVPN*
  sleep 2
else
  echo "Program does not exist"
  echo "Downloading Global Protect"
  sudo jamf policy -id 239
  rm -vrf /Applications/OpenVPN*
  sleep 2
fi
