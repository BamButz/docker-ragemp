#!/bin/sh

echo "Copy server binaries"
cp -u -v /home/server /ragemp/server

echo "Run Server"
cd /ragemp
/ragemp/server
