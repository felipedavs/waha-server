# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define o diretório de trabalho
WORKDIR /app

# Expõe a porta que o WAHA usa internamente
EXPOSE 3000

# Comando que inicia o WAHA
CMD ["npm", "run", "start:prod"]
