FROM node:18-alpine

WORKDIR /app

# Copiar package.json primero
COPY package.json ./

# Instalar dependencias
RUN npm install

# Copiar configuraciones
COPY tailwind.config.js postcss.config.js ./

# Crear directorio de salida
RUN mkdir -p /app/src/css

CMD ["sh", "-c", "npm run watch"]