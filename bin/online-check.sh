#!/bin/zsh

# Saved in ~/bin/online-check.sh and in a cron job as:
# * * * * * ~/bin/online-check.sh
# make it executable chmod +x ~/bin/online-check.sh 

local offline=`dig 8.8.8.8 +time=1 +short google.com A | grep -c "no servers could be reached"`
if [[ "$offline" == "0" ]]; then
  rm ~/.offline
else
  touch ~/.offline
fi
