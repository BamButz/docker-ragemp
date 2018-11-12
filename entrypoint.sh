#!/bin/sh

echo "Copy server binaries"
cp -v -R /serverfiles/* /ragemp/

echo "Run Server"
cd /ragemp
/ragemp/server
