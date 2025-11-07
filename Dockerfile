# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define a chave da API e porta para o Render
ENV WAHA_API_KEY=davs
ENV WAHA_PORT=${PORT}

# Cria o arquivo .env dentro do container
RUN echo "WAHA_API_KEY=davs" > /app/.env

# Força o WAHA a usar o arquivo .env
ENV WAHA_ENV_FILE=/app/.env

# Mostra a chave carregada (debug) e inicia o WAHA corretamente
CMD echo "🔑 WAHA_API_KEY carregada: $WAHA_API_KEY" && xvfb-run docker-entrypoint.sh

EXPOSE 3000
