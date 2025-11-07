FROM devlikeapro/waha:latest

# Copia as variáveis de ambiente para dentro do container
COPY .env /app/.env

# Carrega o .env ao iniciar
ENV WAHA_ENV_FILE=/app/.env

EXPOSE 3000
