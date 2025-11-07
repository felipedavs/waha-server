# Usa a imagem oficial do WAHA
FROM devlikeapro/waha:latest

# Define variáveis de ambiente permanentes
ENV WAHA_API_KEY=davs123
ENV WAHA_DASHBOARD_USERNAME=admin
ENV WAHA_DASHBOARD_PASSWORD=admin123
ENV WAHA_PORT=${PORT:-3000}

# Expõe a porta do Render
EXPOSE 3000
