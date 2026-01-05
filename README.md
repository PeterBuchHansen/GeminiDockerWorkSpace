# Gemini CLI (Docker)

Run the Google Gemini CLI in Docker on macOS (or Linux) without installing Node locally.  
Gemini has read/write access to the `src/` directory.

---

## Install Docker

Install Docker Desktop from:
https://www.docker.com/products/docker-desktop/

---

## Clone the repository

```bash
git clone git@github.com:PeterBuchHansen/GeminiDockerWorkSpace.git
cd GeminiDockerWorkSpace
```

## Configure environment variables

Create a `.env` file in the project root and add your Gemini API key:

```bash
echo "GEMINI_API_KEY=your_api_key_here" > .env
```

## Build (run from GeminiDockerWorkSpace folder)

```bashs
docker-compose build
```

## Run Gemini image

```bash
docker-compose up -d
```

## exec into gemini-cli container

```bash
docker exec -it gemini-cli bash
```


## Start the Gemini CLI inside the container:

```bash
gemini
```