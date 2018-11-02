#!/bin/sh

echo "Copy server binaries"
cp -u -v /home/server /ragemp/server
cp -u -v /home/bt.dat /ragemp/bt.dat

echo "Run Server"
cd /ragemp
/ragemp/server
