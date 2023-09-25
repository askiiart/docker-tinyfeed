# docker-createrepo_c

[![Build Status](https://drone.askiiart.net/api/badges/askiiart/docker-tinyfeed/status.svg?ref=refs/heads/main)](https://drone.askiiart.net/askiiart/docker-tinyfeed)

`tinyfeed` in a Docker container

## Running

Example `docker run`:

```bash
docker run -d -e INTERVAL=300 -v /path/to/feeds.txt:/data/feeds.txt -v /path/to/html:/html docker.askiiart.net/askiiart/tinyfeed
```

Example `docker-compose.yml`:

```yaml
version: '3.7'
services:
  tinyfeed:
    image: docker.askiiart.net/askiiart/tinyfeed
    environment:
      - INTERVAL=300
    volumes:
      - /path/to/feeds.txt:/data/feeds.txt
      - /path/to/html:/html
```

## Environment Variables

| Variable   | Description                           |
| ---------- | ------------------------------------- |
| `INTERVAL` | How often to run tinyfeed, in seconds |

## Building

1. Run `docker build .`
