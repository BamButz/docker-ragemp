#!/bin/sh

echo "Copy server binaries"
cp -v /home/server /ragemp/server
cp -v /home/bt.dat /ragemp/bt.dat

echo "Run Server"
cd /ragemp
/ragemp/server
