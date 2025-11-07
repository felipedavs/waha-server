FROM devlikeapro/waha:latest

# Copia o arquivo .env que está na raiz do projeto
COPY .env /app/.env

# Força o WAHA a usar o arquivo .env e as variáveis do Render
ENV WAHA_ENV_FILE=/app/.env
ENV WAHA_API_KEY=${WAHA_API_KEY}
ENV WAHA_PORT=${PORT}

EXPOSE 3000
