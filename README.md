# VelocityImage
Docker Image to run a velocity minecraft proxy

## 1. Create docker-compose.yml
```
version: "3"
services:
  velocityimage:
    container_name: "velocity"
    image: ghcr.io/l3nnartt/velocityimage:main
    restart: always
    ports:
     - "25565:25565"
    volumes:
      - ./velocity.toml:/opt/velocity/velocity.toml
      - ./plugins/:/opt/velocity/plugins/
```

## 2. Create plugins folder & velocity.toml file
