# Usa a imagem oficial já pronta do WAHA
FROM devlikeapro/waha:latest

# Define variáveis de ambiente dentro do container
ENV WAHA_API_KEY=davs123
ENV WAHA_PORT=${PORT:-3000}

# Expõe a porta que o Render usa
EXPOSE 3000
