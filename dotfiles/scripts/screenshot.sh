#!/bin/bash

scrot -c -d 2 '%Y-%m-%d-%s.jpg' -e 'mv $f ~/Pictures/screenshots/'
