FROM devlikeapro/waha:latest

ENV WAHA_API_KEY=davs
ENV WAHA_PORT=${PORT}

RUN echo "WAHA_API_KEY=davs" > /app/.env
ENV WAHA_ENV_FILE=/app/.env

EXPOSE 3000
