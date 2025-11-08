# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define manualmente as variáveis de ambiente
ENV WAHA_API_KEY=0e5dbd2eb3054ac0b1cc9c4e0b020e83
ENV WAHA_DASHBOARD_USERNAME=admin
ENV WAHA_DASHBOARD_PASSWORD=b53cd1ddaba34ebab362a8174b17081c

# Define o diretório de trabalho
WORKDIR /app

# Expõe a porta usada internamente
EXPOSE 3000

# Comando para iniciar o WAHA
CMD ["npm", "run", "start:prod"]
