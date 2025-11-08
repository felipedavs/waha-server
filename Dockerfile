FROM devlikeapro/waha:latest

# Ajusta variáveis de ambiente para estabilidade
ENV CHROME_PATH=/usr/bin/chromium
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV WAHA_CHROMIUM_ARGS="--no-sandbox,--disable-setuid-sandbox,--disable-dev-shm-usage,--disable-extensions,--disable-gpu,--window-size=1920,1080"

# Aumenta o timeout de conexão do Puppeteer
ENV WAHA_PROTOCOL_TIMEOUT=60000

# Mantém o servidor leve no Render
ENV NODE_ENV=production

CMD ["npm", "run", "start:prod", "--", "--chromium-args=--no-sandbox,--disable-setuid-sandbox,--disable-dev-shm-usage"]
