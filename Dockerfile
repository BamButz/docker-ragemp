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
    wget -O /tmp/server https://cdn.rage.mp/lin/server && \
	mv /tmp/server /home/server && \
	chmod +x /home/server && \
	mkdir /ragemp


VOLUME /ragemp
ADD entrypoint.sh /home
ENTRYPOINT ["/home/entrypoint.sh"]