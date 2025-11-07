# Usa a imagem oficial do WAHA (WhatsApp HTTP API)
FROM devlikeapro/waha:latest

# Copia o arquivo .env da raiz do repositório para dentro do container
COPY .env /app/.env

# Expõe a porta que o Render utiliza
EXPOSE 3000
