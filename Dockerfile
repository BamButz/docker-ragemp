FROM debian:9-slim
LABEL maintainer="BamButz \"bambutz@cryptonica.de\""

# Expose Ports
EXPOSE 20005
EXPOSE 22005/udp
EXPOSE 22006

# ------------------------
# Setup
# ------------------------

RUN apt update && \
    apt install wget gcc -y && \
    wget -O /tmp/server.tar.gz https://cdn.rage.mp/lin/ragemp-srv-036.tar.gz && \
	tar -xzf /tmp/server.tar.gz -C /tmp && \
	mv /tmp/ragemp-srv/server /home/server && \
	mv /tmp/ragemp-srv/bt.dat /home/bt.dat && \
	chmod +x /home/server && \
	mkdir /ragemp


VOLUME /ragemp
ADD entrypoint.sh /home
ENTRYPOINT ["/home/entrypoint.sh"]