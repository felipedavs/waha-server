# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define e injeta a chave da API no ambiente
ENV WAHA_API_KEY=davs
ENV WAHA_PORT=${PORT}

# Cria o arquivo .env para o WAHA reconhecer a API key (algumas versões só leem desse arquivo)
RUN echo "WAHA_API_KEY=davs" > /app/.env

# Força o WAHA a carregar esse .env no boot
ENV WAHA_ENV_FILE=/app/.env

# Mostra a variável no log na inicialização (debug útil)
CMD echo "🔑 WAHA_API_KEY carregada: $WAHA_API_KEY" && xvfb-run node /app/main.js

EXPOSE 3000
