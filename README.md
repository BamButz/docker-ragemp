# docker-ragemp
Run RAGE Multiplayer in a dockerized environment.

https://hub.docker.com/r/bambutz/ragemp/

### Sample
```sh
docker run --name ragemp -p 22005:22005/udp -p 22006:22006 -v /opt/ragemp:/ragemp bambutz/ragemp
```


### Ports
- 22005/udp
- 22006

### Volumes
/ragemp
