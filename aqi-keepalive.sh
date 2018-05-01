#!/bin/bash
# Keep the data-collecting python script running in the background (if it is not running). 
# Author: MDrights

if ps -ef |grep aqi.py |grep -v grep; then
    exit 0
else
    (python $HOME/aqi-share/api/python/aqi.py) &
fi
exit 0
