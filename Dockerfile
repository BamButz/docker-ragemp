FROM debian:stable-slim
LABEL maintainer="BamButz \"bambutz@cryptonica.de\""

# Expose Ports
EXPOSE 22005/udp
EXPOSE 22006

# ------------------------
# Setup
# ------------------------

RUN apt update && \
    apt install wget gcc libunwind8 icu-devtools curl libssl-dev procps -y && \
    wget -O /tmp/server.tar.gz https://cdn.rage.mp/updater/prerelease/server-files/linux_x64.tar.gz && \
	tar -xzf /tmp/server.tar.gz -C /tmp && \
	mkdir /serverfiles && \
	mv /tmp/ragemp-srv/ragemp-server /serverfiles/ragemp-server && \
	mv /tmp/ragemp-srv/bin /serverfiles/bin && \
    mv /tmp/ragemp-srv/dotnet /serverfiles/dotnet && \
	chmod +x /serverfiles/ragemp-server && \
	mkdir /ragemp

ADD entrypoint.sh /home/entrypoint.sh
ADD conf.json /serverfiles/conf.json

VOLUME /ragemp

ENTRYPOINT ["sh", "/home/entrypoint.sh"]
