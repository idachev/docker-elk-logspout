# Credits

This is a fork of: https://github.com/deviantony/docker-elk.git

Added Logspout and fixed the format of logs.

> Only `docker-compose.yml` is changed the stack one was not modified.

# Usage

To start the stack just execute:

```bash
./docker-compose-elk.sh up -d
```

The Kibana will be available at: http://localhost:5601

* user: elastic
* pass: changeme

To start with Elasticsearch ports and Logstash ports exposed execute:

```bash
./docker-compose-elk-ports.sh up -d
```

# Using Logspout

Used for docker logs this:
https://hub.docker.com/r/gliderlabs/logspout

Modified to parse as JSON.

# ELK README

Check [ELK README](ELK_README.md)

# TODOs

- [ ] Fix stack - docker swarm mode
 