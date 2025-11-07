FROM devlikeapro/waha:latest

# Força o container a herdar as variáveis definidas no Render
ENV WAHA_API_KEY=${WAHA_API_KEY}
ENV WAHA_PORT=${PORT}

EXPOSE 3000
