#!/bin/bash
set -eo -x pipefail

GAME_DIR=/home/steam/Steam/steamapps/common/VRisingDedicatedServer

mkdir /data/Settings

cd $GAME_DIR

Xvfb :0 -screen 0 1024x768x16 &

# launch using setsid
# setsid wine VRisingServer.exe -persistentDataPath Z:\\data\\persistent_data
DISPLAY=:0.0 wine VRisingServer.exe -persistentDataPath Z:\\data