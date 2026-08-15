FROM ghcr.io/containerpak/mesa64:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/kdenlive"

RUN apt-get update && \
    apt-get install -y --no-install-recommends kdenlive && \
    cpak-clean-junk

COPY org.kde.kdenlive.desktop /usr/share/applications/org.kde.kdenlive.desktop
