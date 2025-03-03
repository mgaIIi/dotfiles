#!/bin/bash

sent=false

while true; do
  # Get battery status
  battery_status=$(acpi)
  IFS=',' read -r -a array <<< "$battery_status"

  charging=false
  if [[ "${array[0]}" =~ "Charging" ]]; then
    charging=true
  fi

  # Extract battery percentage (remove trailing % and trim spaces)
  battery_percent=$(echo "${array[1]}" | tr -d '% ')

  # Check if battery is 70% or below and notification not sent
  if [ "$battery_percent" -le 10 ] && [ "$sent" = false ] && [ "$charging" = false ]; then
    notify-send "LOW BATTERY" "CONNECT TO CHARGER"
    sent=true
  fi

  if [ "$battery_percent" -ge 10 ] ; then
    sent=false
  fi
   

  # Sleep for a while to avoid excessive CPU usage
  sleep 120  # Check every 60 seconds
done

