#!/bin/bash
docker-compose up -d
docker exec -it ollama ollama pull qwen2.5:0.5b
echo "The script execition completed"
