FROM devlikeapro/waha:latest

# Copia o .env para dentro do container (caso exista localmente)
COPY waha-server/.env /app/.env

# Força o WAHA a usar essa API key dentro do container
ENV WAHA_API_KEY=davs
ENV WAHA_ENV_FILE=/app/.env
ENV WAHA_PORT=${PORT:-3000}

EXPOSE 3000

# Define o comando padrão
CMD ["bash", "-c", "echo 🔑 WAHA_API_KEY=$WAHA_API_KEY && xvfb-run node /app/main.js"]
