#!/bin/bash
# Copyright: Owen Phillips 2016
# Description: A simple backup script for octoprint timelapses.
#              It is written with the Clemson Makerspace in mind,
#              and serves as a general introduction to bash scripting.
USER="****"
PASS="****"
HOSTS=("****" "****" "****" "****")
RDIR="/home/octoprint/.octoprint/timelapse"
LDIR="/mnt/MAKERSPACE/timelapse"

for i in "{$HOSTS[@]}"; do
    rsync -avzhe ssh $USER@$i:/$RDIR $LDIR/$i
    echo $PASS
done

exit 0
