#!/bin/bash
# run_gemini.sh
# Build, run, enter Gemini CLI, and cleanup automatically

# Check if .env file exists
if [ ! -f .env ]; then
    echo ".env file not found! Please create one with your GEMINI_API_KEY."
    exit 1
fi

# Set symbolic link to HOST_GEMINI_WS
export $(cat .env | xargs)
ln -s $HOST_GEMINI_WS ./gemini.ws

# Build Docker image
echo "Building Docker image..."
docker-compose build

# Run container with volume mount
echo "Starting Gemini container..."
docker-compose up -d

# Exec into container and start Gemini CLI
# This will keep you inside the container until you exit
docker exec -it gemini-cli bash -c "gemini; exec bash"

# After leaving the container, bring down docker-compose
echo "Stopping Gemini container..."
docker-compose down

# Remove symbolic link
rm ./gemini.ws
