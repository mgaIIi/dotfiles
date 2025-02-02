#!/bin/bash
battery=$(acpi)
notify-send "BATTERY STATUS" "$battery"
