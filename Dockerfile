FROM devlikeapro/waha:latest

COPY .env /app/.env

WORKDIR /app

EXPOSE 3000
