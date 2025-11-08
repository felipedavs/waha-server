FROM devlikeapro/waha:latest

# Mostra a variável no log na inicialização
RUN echo "WAHA_API_KEY = ${WAHA_API_KEY}"

WORKDIR /app
EXPOSE 3000

CMD ["npm", "run", "start:prod"]
