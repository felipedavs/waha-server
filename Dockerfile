# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define a variável de ambiente da API (coloque a sua chave)
ENV WAHA_API_KEY=0e5dbd2eb3054ac0b1cc9c4e0b020e83

# Copia o arquivo .env (opcional, se ainda quiser manter)
COPY .env /app/.env

# Define o diretório de trabalho
WORKDIR /app

# Expõe a porta que o WAHA usa internamente
EXPOSE 3000

# Comando que inicia o WAHA
CMD ["npm", "run", "start:prod"]
