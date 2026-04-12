FROM justlikemaki/openclaw-docker-cn-im:latest

USER root
RUN apt-get update && \
    apt-get install -y python3-pip && \
    rm -rf /var/lib/apt/lists/*

USER node
RUN pip3 install playwright --break-system-packages && \
    playwright install chromium

USER root
WORKDIR /home/node
