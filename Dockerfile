# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define diretório de trabalho
WORKDIR /app

# Copia o .env para dentro do container
COPY .env /app/.env

# Expõe a porta do serviço
EXPOSE 3000

# Define a variável de ambiente explicita
ENV WAHA_ENV_FILE=/app/.env

# Executa o WAHA
CMD ["npm", "start"]
