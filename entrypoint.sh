#!/bin/sh

echo "Copy server files"
cp -v -R /serverfiles/* /ragemp/

echo "Set config variables"

sed "s/{ANNOUNCE}/${RAGEMP_ANNOUNCE:=false}/g" -i /ragemp/conf.json
sed "s/{BIND}/${RAGEMP_BIND:=0.0.0.0}/g" -i /ragemp/conf.json
sed "s/{GAMEMODE}/${RAGEMP_GAMEMODE:=freeroam}/g" -i /ragemp/conf.json
sed "s/{ENCRYPTION}/${RAGEMP_ENCRYPTION:=false}/g" -i /ragemp/conf.json
sed "s/{MAXPLAYERS}/${RAGEMP_MAXPLAYERS:=500}/g" -i /ragemp/conf.json
sed "s/{NAME}/${RAGEMP_NAME:=RAGE:MP Unofficial server}/g" -i /ragemp/conf.json
sed "s/{STREAM_DISTANCE}/${RAGEMP_STREAM_DISTANCE:=500}/g" -i /ragemp/conf.json
sed "s/{PORT}/${RAGEMP_PORT:=22005}/g" -i /ragemp/conf.json
sed "s/{DISALLOW_MULTIPLE_CONNECTIONS_PER_IP}/${RAGEMP_DISALLOW_MULTIPLE_CONNECTIONS_PER_IP:=false}/g" -i /ragemp/conf.json
sed "s/{LIMIT_TIME_OF_CONNECTIONS_PER_IP}/${RAGEMP_LIMIT_TIME_OF_CONNECTIONS_PER_IP:=0}/g" -i /ragemp/conf.json
sed "s/{URL}/${RAGEMP_URL}/g" -i /ragemp/conf.json
sed "s/{LANGUAGE}/${RAGEMP_LANGUAGE:=en}/g" -i /ragemp/conf.json
sed "s/{SYNC_RATE}/${RAGEMP_SYNC_RATE:=40}/g" -i /ragemp/conf.json
sed "s/{RESOURCE_SCAN_THREAD_LIMIT}/${RAGEMP_RESOURCE_SCAN_THREAD_LIMIT:=0}/g" -i /ragemp/conf.json
sed "s/{MAX_PING}/${RAGEMP_MAX_PING:=120}/g" -i /ragemp/conf.json
sed "s/{MIN_FPS}/${RAGEMP_MIN_FPS:=24}/g" -i /ragemp/conf.json
sed "s/{MAX_PACKET_LOSS}/${RAGEMP_MAX_PACKET_LOSS:=0.2}/g" -i /ragemp/conf.json
sed "s/{ALLOW_CEF_DEBUGGING}/${RAGEMP_ALLOW_CEF_DEBUGGING:=false}/g" -i /ragemp/conf.json
sed "s/{CSHARP}/${RAGEMP_CSHARP:=false}/g" -i /ragemp/conf.json
sed "s/{ENABLE_HTTP_SECURITY}/${RAGEMP_ENABLE_HTTP_SECURITY:=false}/g" -i /ragemp/conf.json
sed "s/{VOICE_CHAT}/${RAGEMP_VOICE_CHAT:=false}/g" -i /ragemp/conf.json
sed "s/{VOICE_CHAT_SAMPLE_RATE}/${RAGEMP_VOICE_CHAT_SAMPLE_RATE:=24000}/g" -i /ragemp/conf.json

echo "Run Server"
cd /ragemp
/ragemp/server
