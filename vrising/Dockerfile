FROM athosone/winebased:0.0.1

ARG VRISING_APP_ID=1829350

RUN mkdir -p /data
RUN chown steam /data

COPY start.sh /start.sh
RUN chmod +x /start.sh

USER steam

# Install vrising server
RUN ./steamcmd.sh +@sSteamCmdForcePlatformType windows +login anonymous +app_update ${VRISING_APP_ID} validate +quit || true

ENV VRISING_APP_ID=${VRISING_APP_ID}

# UDP
EXPOSE 9877
EXPOSE 9876	

CMD [ "/start.sh" ]