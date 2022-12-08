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
![image](https://user-images.githubusercontent.com/69513317/204505459-bba2bee5-6150-4a5a-a37e-7b1f163fd0be.png)

Get the default toml from the velocity repo
https://github.com/PaperMC/Velocity/blob/dev/3.0.0/proxy/src/main/resources/default-velocity.toml
