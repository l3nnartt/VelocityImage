FROM openjdk:17-alpine

EXPOSE 25565

WORKDIR /bungeecord/
ADD https://api.papermc.io/v2/projects/velocity/versions/3.1.2-SNAPSHOT/builds/185/downloads/velocity-3.1.2-SNAPSHOT-185.jar velocity.jar

RUN apk --update add --no-cache ca-certificates

CMD pwd
CMD ls -a

CMD java -jar velocity.jar