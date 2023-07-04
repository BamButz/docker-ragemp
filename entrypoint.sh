#!/bin/sh

echo "Copy server files"
cp -v -p -u -R /serverfiles/* /ragemp/

echo "Set config variables"
sed "s/{ANNOUNCE}/${RAGEMP_ANNOUNCE:=false}/g" -i /ragemp/conf.json
sed "s/{BIND}/${RAGEMP_BIND:=0.0.0.0}/g" -i /ragemp/conf.json
sed "s/{GAMEMODE}/${RAGEMP_GAMEMODE:=freeroam}/g" -i /ragemp/conf.json
sed "s/{ENCRYPTION}/${RAGEMP_ENCRYPTION:=false}/g" -i /ragemp/conf.json
sed "s/{MAXPLAYERS}/${RAGEMP_MAXPLAYERS:=100}/g" -i /ragemp/conf.json
sed "s/{NAME}/${RAGEMP_NAME:=RAGE:MP Unofficial server}/g" -i /ragemp/conf.json
sed "s/{STREAM_DISTANCE}/${RAGEMP_STREAM_DISTANCE:=500}/g" -i /ragemp/conf.json
sed "s/{PORT}/${RAGEMP_PORT:=22005}/g" -i /ragemp/conf.json
sed "s/{DISALLOW_MULTIPLE_CONNECTIONS_PER_IP}/${RAGEMP_DISALLOW_MULTIPLE_CONNECTIONS_PER_IP:=false}/g" -i /ragemp/conf.json
sed "s/{LIMIT_TIME_OF_CONNECTIONS_PER_IP}/${RAGEMP_LIMIT_TIME_OF_CONNECTIONS_PER_IP:=0}/g" -i /ragemp/conf.json
sed "s/{URL}/${RAGEMP_URL}/g" -i /ragemp/conf.json
sed "s/{LANGUAGE}/${RAGEMP_LANGUAGE:=us}/g" -i /ragemp/conf.json
sed "s/{SYNC_RATE}/${RAGEMP_SYNC_RATE:=40}/g" -i /ragemp/conf.json
sed "s/{RESOURCE_SCAN_THREAD_LIMIT}/${RAGEMP_RESOURCE_SCAN_THREAD_LIMIT:=0}/g" -i /ragemp/conf.json
sed "s/{MAX_PING}/${RAGEMP_MAX_PING:=120}/g" -i /ragemp/conf.json
sed "s/{MIN_FPS}/${RAGEMP_MIN_FPS:=24}/g" -i /ragemp/conf.json
sed "s/{MAX_PACKET_LOSS}/${RAGEMP_MAX_PACKET_LOSS:=0.2}/g" -i /ragemp/conf.json
sed "s/{ALLOW_CEF_DEBUGGING}/${RAGEMP_ALLOW_CEF_DEBUGGING:=false}/g" -i /ragemp/conf.json
sed "s/{ENABLE_HTTP_SECURITY}/${RAGEMP_ENABLE_HTTP_SECURITY:=false}/g" -i /ragemp/conf.json
sed "s/{VOICE_CHAT}/${RAGEMP_VOICE_CHAT:=false}/g" -i /ragemp/conf.json
sed "s/{VOICE_CHAT_SAMPLE_RATE}/${RAGEMP_VOICE_CHAT_SAMPLE_RATE:=24000}/g" -i /ragemp/conf.json
sed "s/{FASTDL_HOST}/${RAGEMP_FASTDL_HOST}/g" -i /ragemp/conf.json
sed "s/{SERVER_SIDE_WEAPONS_ONLY_MODE}/${RAGEMP_SERVER_SIDE_WEAPONS_ONLY_MODE:=true}/g" -i /ragemp/conf.json
sed "s/{FQDN}/${RAGEMP_FQDN}/g" -i /ragemp/conf.json
sed "s/{RESOURCES_COMPRESSION_LEVEL}/${RAGEMP_RESOURCES_COMPRESSION_LEVEL:=1}/g" -i /ragemp/conf.json
sed "s/{NODE_COMMANDLINE_FLAGS}/$NODE_COMMANDLINE_FLAGS/g" -i /ragemp/conf.json
sed "s/{SYNCHRONIZATION_EXTRAPOLATION_MULTIPLIER}/${RAGEMP_SYNCHRONIZATION_EXTRAPOLATION_MULTIPLIER:=1.0}/g" -i /ragemp/conf.json
sed "s/{HTTP_THREADS}/${RAGEMP_HTTP_THREADS:=50}/g" -i /ragemp/conf.json
sed "s/{TRIGGER_COMPRESSION_LOGGING}/${RAGEMP_TRIGGER_COMPRESSION_LOGGING:=false}/g" -i /ragemp/conf.json
sed "s/{TRIGGER_COMPRESSION_TRAINING}/${RAGEMP_TRIGGER_COMPRESSION_TRAINING:=false}/g" -i /ragemp/conf.json
sed "s/{TRIGGER_COMPRESSION_DICTIONARY}/${RAGEMP_TRIGGER_COMPRESSION_DICTIONARY}/g" -i /ragemp/conf.json
sed "s/{CREATE_FASTDL_SNAPSHOT}/${RAGEMP_CREATE_FASTDL_SNAPSHOT:=false}/g" -i /ragemp/conf.json
sed "s/{DISABLE_CLIENT_PACKAGES_RAM_CACHE}/${RAGEMP_DISABLE_CLIENT_PACKAGES_RAM_CACHE:=false}/g" -i /ragemp/conf.json
sed "s/{CLIENT_PACKAGES_SHARED_FOLDER}/${RAGEMP_CLIENT_PACKAGES_SHARED_FOLDER}/g" -i /ragemp/conf.json


# Rewrite true/false to enabled/disabled for consistency 
# to allow all boolean variables to be set with true/false
if [ "$RAGEMP_CSHARP" = true ]; then
    sed "s/{CSHARP}/${RAGEMP_CSHARP:=enabled}/g" -i /ragemp/conf.json
else
    sed "s/{CSHARP}/${RAGEMP_CSHARP:=disabled}/g" -i /ragemp/conf.json
fi

echo "Run Server"
cd /ragemp
/ragemp/ragemp-server
