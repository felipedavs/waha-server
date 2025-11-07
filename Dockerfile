FROM devlikeapro/waha:latest

# Copia o arquivo .env para dentro do container
COPY .env /app/.env

EXPOSE 3000
