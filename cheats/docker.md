# docker

## Containers

- `docker ps` — List running containers
- `docker ps -a` — List all containers (including stopped)
- `docker run -it [image]` — Run a container interactively
- `docker stop [id]` — Stop a running container
- `docker rm [id]` — Remove a container

## Images

- `docker images` — List all local images
- `docker pull [image]` — Pull an image from registry
- `docker rmi [image]` — Remove a local image
- `docker build -t [name] .` — Build an image from Dockerfile

## Maintenance

- `docker system prune` — Remove unused data
- `docker system prune -a --volumes` — Deep clean (unused images & volumes)
- `docker logs -f [id]` — Follow container logs
- `docker inspect [id]` — Show detailed info about a container

## Volumes & Networks

- `docker volume ls` — List all volumes
- `docker volume rm [name]` — Remove a volume
- `docker network ls` — List all networks
- `docker network inspect [name]` — Detailed network info
