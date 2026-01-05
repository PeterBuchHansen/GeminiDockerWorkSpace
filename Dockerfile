FROM node:20-slim

RUN apt-get update && \
    apt-get install -y nano && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g @google/gemini-cli

WORKDIR /app
