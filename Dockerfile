# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define o diretório de trabalho
WORKDIR /app

# Expõe a porta usada internamente
EXPOSE 3000

# Comando para iniciar o WAHA
CMD ["npm", "run", "start:prod"]
