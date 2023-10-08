FROM athosone/winebased:0.0.1

# VOLUME [ "/data/vrising_server" ]

ARG VRISING_APP_ID=1829350

RUN mkdir -p /data/vrising_server
# Install vrising server
RUN /usr/bin/steamcmd +@sSteamCmdForcePlatformType windows +force_install_dir "/data/vrising_server" +login anonymous +app_update ${VRISING_APP_ID} validate +quit

COPY start.sh /start.sh
RUN chmod +x /start.sh

# Provide the path where the server should store the persistent data: e.g: /data/vrising_server/persistent_data
ENV PERSISTENT_DATA=""

# UDP
EXPOSE 9897
EXPOSE 9896

CMD [ "/start.sh" ]