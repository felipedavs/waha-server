FROM devlikeapro/waha:latest

# Copia o .env se você quiser manter
COPY waha-server/.env /app/.env

# Define a chave direto na inicialização — força o container a usar essa
ENV WAHA_API_KEY=davs
ENV WAHA_PORT=${PORT:-3000}

EXPOSE 3000

# Força o WAHA a rodar com a chave
CMD export WAHA_API_KEY=davs && xvfb-run node /app/main.js
