# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define a chave da API e força o WAHA a usá-la
ENV WAHA_API_KEY=davs
ENV WAHA_ENV_FILE=/app/.env
ENV WAHA_PORT=${PORT}

# Garante que o arquivo .env seja criado dentro do container
RUN echo "WAHA_API_KEY=davs" > /app/.env

EXPOSE 3000
