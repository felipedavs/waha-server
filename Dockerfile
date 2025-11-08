FROM devlikeapro/waha:latest

WORKDIR /app
EXPOSE 3000

CMD ["npm", "run", "start:prod"]
