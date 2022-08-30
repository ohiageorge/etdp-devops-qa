#!bin/bash
docker stop etdp-qa
docker system prune -f
docker compose up -d --force-recreate