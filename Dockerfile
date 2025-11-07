FROM devlikeapro/waha:latest

# Copia o arquivo .env para dentro do container
COPY .env /app/.env

# Força o WAHA a carregar o .env e também herdar as variáveis do Render
ENV WAHA_ENV_FILE=/app/.env
ENV WAHA_API_KEY=${WAHA_API_KEY}
ENV WAHA_PORT=${PORT}

# Expõe a porta que o Render usa
EXPOSE 3000
