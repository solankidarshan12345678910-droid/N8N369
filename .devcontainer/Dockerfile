FROM mcr.microsoft.com/devcontainers/base:ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       xfce4 \
       xfce4-goodies \
       xfce4-whiskermenu-plugin \
       x11vnc \
       xvfb \
       novnc \
       websockify \
       firefox \
       dbus-x11 \
       xdg-utils \
       fonts-dejavu \
       curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY start-desktop.sh /usr/local/bin/start-desktop.sh
RUN chmod +x /usr/local/bin/start-desktop.sh

EXPOSE 6080
