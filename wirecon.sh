#!/bin/bash

echo "Do you want to scan WiFi networks? (y/n):"
read wifi

if [ "$wifi" = "y" ]; then
  scan_output=$(sudo iwlist scan)
else
  exit 1
fi

echo "$scan_output" | grep -E 'ESSID|Signal level|Encryption key'

echo "Do you want to connect to a WiFi network? (y/n):"
read y

if [ "$y" = "y" ]; then
  echo "Available networks:"
  echo "$scan_output" | grep ESSID

  read -p "Enter network name: " network_name
  echo -n "Is the network password protected? (y/n): "
  read xz

  if [ "$xz" = "y" ]; then
    read -sp "Enter the WiFi password: " wifi_pass
    echo ""
    nmcli dev wifi connect "$network_name" password "$wifi_pass"
  else
    nmcli dev wifi connect "$network_name"
  fi
fi

echo "Do you want to scan for WPS networks? (Y/N):"
read wps

if [ "$wps" = "Y" ]; then
  sudo airmon-ng start wlan0
  sudo wash -i wlan0mon --ignore-fcs
else
  echo "Skipping WPS scan."
fi
