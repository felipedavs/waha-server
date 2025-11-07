# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define variáveis de ambiente fixas (vão embutidas na imagem)
ENV WAHA_API_KEY=davs123
ENV WAHA_PORT=${PORT:-3000}

# (Opcional) copia um .env local, se quiser manter outras configs
# COPY waha-server/.env /app/.env

# Expõe a porta padrão do Render
EXPOSE 3000

# Comando de inicialização: força o uso da API key embutida
CMD export WAHA_API_KEY=davs123 && xvfb-run node /app/main.js
