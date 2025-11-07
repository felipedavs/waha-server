FROM devlikeapro/waha:latest

# Passa a variável de ambiente para dentro do container
ENV WAHA_API_KEY=${WAHA_API_KEY}

EXPOSE 3000
