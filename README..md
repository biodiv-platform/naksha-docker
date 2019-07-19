# Docker Naksha 🗺 + 🐋

Docker deployment configuration for Naksha

## 💽 Prerequisites

### 1. Setup docker and compose
Instruction for setting up Docker and Docker Compose can be found at below links
- https://docs.docker.com/install/
- https://docs.docker.com/compose/install/

### 2. Configure mapbox token
- `naksha-components-react` library that renders map on UI requires mapbox token to show imagery, instructions on how to acquire token can be found [here](https://docs.mapbox.com/help/how-mapbox-works/access-tokens/#creating-and-managing-access-tokens)
- after generating token put your token in `frontend/env.production`

## Building 🛠️
```sh
docker-compose build
```

## Running ✨
```sh
docker-compose up -d   # -d will start docker containers in background
```

## Shutdown 💤
```sh
docker-compose down
```
