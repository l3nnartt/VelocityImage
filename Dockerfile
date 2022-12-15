FROM openjdk:17-alpine

LABEL org.opencontainers.image.vendor="ghcr.io"
LABEL org.opencontainers.image.title="Velocity"
LABEL org.opencontainers.image.description="Docker image to run a velocity minecraft proxy"
LABEL org.opencontainers.image.source=https://github.com/l3nnartt/velocityimage
LABEL org.opencontainers.image.authors="Lennart Lösche <contact@lennartloesche.de>"
LABEL org.opencontainers.image.version=3.1.2-SNAPSHOT-200

EXPOSE 25565

WORKDIR /opt/velocity/
ADD https://api.papermc.io/v2/projects/velocity/versions/3.1.2-SNAPSHOT/builds/200/downloads/velocity-3.1.2-SNAPSHOT-200.jar velocity.jar

RUN apk --update add --no-cache ca-certificates

CMD java -jar -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 velocity.jar
