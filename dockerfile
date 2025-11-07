# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Expõe a porta padrão
EXPOSE 3000

# Define o comando padrão
CMD ["npm", "start"]
