#!/bin/bash 

battery_percentage=$(acpi -b | grep -o '[0-9]*%')
echo -e "$battery_percentage "

