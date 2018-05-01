#!/bin/bash
# Collect and parse the latest data (via jq) and send it by the python script.
# Will be run timely via crontab.
# Written by MDrights.

# Get the latest date
echo "==== My location ====" > /tmp/aqi-latest.json
cat /var/www/html/aqi.json |jq -c '.[-1] | {pm25: .pm25, pm10: .pm10, time: .time}' >> /tmp/aqi-latest.json

DIR="$HOME/aqi-share"
/usr/bin/python $DIR/irc-client.py

exit
