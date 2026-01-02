#!/bin/bash
if systemctl is-active k3s; then
    sudo /usr/local/bin/k3s-uninstall.sh
docker-compose up -d
docker exec -it ollama ollama pull qwen2.5:0.5b
echo "The script execition completed"
