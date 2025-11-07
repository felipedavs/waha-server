# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo .env para dentro do container
COPY .env /app/.env

# Expõe a porta padrão
EXPOSE 3000

# Garante que o WAHA saiba onde está o arquivo .env
ENV WAHA_ENV_FILE=/app/.env

# Comando correto para iniciar o WAHA
CMD ["node", "src/main.js"]
