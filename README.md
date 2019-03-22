[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![](https://images.microbadger.com/badges/version/bambutz/ragemp.svg)](https://microbadger.com/images/bambutz/ragemp "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/bambutz/ragemp.svg)](https://microbadger.com/images/bambutz/ragemp "Get your own image badge on microbadger.com")

# docker-ragemp
Run RAGE Multiplayer in a dockerized environment.

https://hub.docker.com/r/bambutz/ragemp/

### Sample
```sh
docker run --name ragemp -p 22005:22005/udp -p 22006:22006 -v /opt/ragemp:/ragemp bambutz/ragemp
```

### Variables

The variables have been implemented with default values, so they do not have to be set.

- RAGEMP_ANNOUNCE=false
- RAGEMP_BIND=0.0.0.0
- RAGEMP_GAMEMODE=freeroam
- RAGEMP_ENCRYPTION=false
- RAGEMP_MAXPLAYERS=500
- RAGEMP_NAME=RAGE:MP Unofficial server
- RAGEMP_STREAM_DISTANCE=500
- RAGEMP_PORT=22005
- RAGEMP_DISALLOW_MULTIPLE_CONNECTIONS_PER_IP=false
- RAGEMP_LIMIT_TIME_OF_CONNECTIONS_PER_IP=0
- RAGEMP_URL=
- RAGEMP_LANGUAGE=en
- RAGEMP_SYNC_RATE=40
- RAGEMP_RESOURCE_SCAN_THREAD_LIMIT=0
- RAGEMP_MAX_PING=120
- RAGEMP_MIN_FPS=24
- RAGEMP_MAX_PACKET_LOSS=0.2
- RAGEMP_ALLOW_CEF_DEBUGGING=false
- RAGEMP_CSHARP=false
- RAGEMP_ENABLE_HTTP_SECURITY=false
- RAGEMP_VOICE_CHAT=false
- RAGEMP_VOICE_CHAT_SAMPLE_RATE=24000

### Ports
- 22005/udp
- 22006

### Volumes
/ragemp
