#!/bin/bash
set -xe
if systemctl is-active k3s; then
    sudo /usr/local/bin/k3s-uninstall.sh
fi
#docker-compose up -d
curl -fsSL https://claude.ai/install.sh | bash -s stable
curl -fsSL https://ollama.com/install.sh | sh
#docker exec -it ollama ollama pull qwen2.5:1.5b
ollama pull qwen2.5:1.5b
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
echo "The script execition completed"
