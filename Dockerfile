# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define a chave da API direto no container
ENV WAHA_API_KEY=davs

# Define a porta padrão (Render usa a env PORT)
ENV WAHA_PORT=${PORT}

# Expõe a porta usada pelo Render
EXPOSE 3000
