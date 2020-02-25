<h1 align="center">Welcome to docker-ragemp 👋</h1>
<p>
  <a href="https://github.com/BamButz/docker-ragemp/blob/master/LICENSE">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" target="_blank" />
  </a>
  <a href="https://hub.docker.com/r/bambutz/ragemp">
    <img alt="Docker: Stars" src="https://img.shields.io/docker/stars/bambutz/ragemp.svg" target="_blank" />
  </a>
  <a href="https://hub.docker.com/r/bambutz/ragemp">
    <img alt="Docker: Pulls" src="https://img.shields.io/docker/pulls/bambutz/ragemp.svg" target="_blank" />
  </a>
  <a href="https://hub.docker.com/r/bambutz/ragemp">
    <img alt="Docker: Layers" src="https://img.shields.io/microbadger/layers/bambutz/ragemp.svg" target="_blank" />
  </a>
  <a href="https://hub.docker.com/r/bambutz/ragemp">
    <img alt="Docker: Image size" src="https://img.shields.io/microbadger/image-size/bambutz/ragemp.svg" target="_blank" />
  </a>
</p>

> Run RAGE Multiplayer in a dockerized environment.

### 🏠 [Homepage](https://github.com/BamButz/docker-ragemp)

## Usage

```sh
docker run --name ragemp -p 22005:22005/udp -p 22006:22006 -v /opt/ragemp:/ragemp bambutz/ragemp
```

## Variables

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
- RAGEMP_NODE_COMMANDLINE_FLAGS=

### RAGEMP_CSHARP

Enable/disable via true/false.  
I changed the value to maintain consistency.

### RAGEMP_NODE_COMMANDLINE_FLAGS

Set to "--inspect" to enable NodeJS debugging feature (available with RAGE 1.1+)

## Ports
- 22005/udp
- 22006

## Volumes
- /ragemp

## Author

👤 [@BamButz](https://github.com/BamButz)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/BamButz/docker-ragemp/issues).

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2019 [BamButz](https://github.com/BamButz).<br />
This project is [MIT](https://github.com/BamButz/docker-ragemp/blob/master/LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
