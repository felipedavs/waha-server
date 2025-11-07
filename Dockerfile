FROM devlikeapro/waha:latest

# Copia o arquivo .env da pasta /waha-server para dentro do container
COPY waha-server/.env /app/.env

# Força o WAHA a usar esse arquivo
ENV WAHA_ENV_FILE=/app/.env
ENV WAHA_API_KEY=davs
ENV WAHA_PORT=${PORT}

EXPOSE 3000
