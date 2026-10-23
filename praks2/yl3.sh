#!/bin/bash

# Skript kuvab tänase kuupäeva, kellaaja ja kalendri

echo "Today is $(LC_TIME=C date '+%A, %B %d, %Y')"
echo "Time is $(date '+%H:%M')"

echo ""
echo "Calendar of $(LC_TIME=C date '+%B %Y')"
LC_ALL=C cal | tail -n +2
