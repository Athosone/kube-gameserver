#!/bin/bash

# set -euo -x pipefail
#https://bertvv.github.io/cheat-sheets/Bash.html
set -eo -x pipefail

GAME_DIR=/home/steam/Steam/steamapps/common/VRisingDedicatedServer

if [ -z $PERSISTENT_DATA ]; then
  echo "Missing persitent data path, default to: /data/persistent_data"
  PERSISTENT_DATA="/data/persistent_data"
  mkdir -p $PERSISTENT_DATA
  # exit 1
fi

if [ -z $SERVERNAME ]; then
  SERVERNAME="wheretheravensleep-V"
fi

GAME_PORT=${GAME_PORT:-9897}
QUERY_PORT=${QUERY_PORT:-9896}

TZ="${TZ:-Europe/Paris}"

# echo $TZ > /etc/timezone 2>&1
# ln -snf /usr/share/zoneinfo/$TZ /etc/localtime 2>&1
# dpkg-reconfigure -f noninteractive tzdata 2>&1

 mkdir /saves/Settings

Xvfb :0 -screen 0 1024x768x16 &

export DISPLAY=:0.0
wine64 $GAME_DIR/VRisingServer.exe -persistentDataPath Z:\\data\\persistent_data
# -serverName "$SERVERNAME" \
#  -saveName "world1" \
#   -logFile "$PERSISTENT_DATA/VRisingServer.log" "$GAME_PORT" "$QUERY_PORT" 2>&1

# tail -f "$PERSISTENT_DATA/VRisingServer.log"