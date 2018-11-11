#!/bin/sh

echo "Copy server binaries"
cp -v -R --parents /serverfiles/* /ragemp/

echo "Run Server"
cd /ragemp
/ragemp/server
