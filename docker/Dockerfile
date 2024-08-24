# Usa una imagen base de Node.js
FROM node:22-alpine

# Instala bash para una mayor flexibilidad en los comandos
RUN apk add --no-cache bash

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de configuración y dependencias al contenedor
COPY package*.json ./
COPY tsconfig.json ./

# Instala los módulos necesarios
RUN npm install tsx

# Copia el código fuente al contenedor
# COPY src ./src

# COPY tests ./tests

COPY . ./

# Expone el puerto en el que se ejecutará la aplicación
ENV NODE_ENV=${NODE_ENV}
ENV APP_PORT=${APP_PORT}

EXPOSE ${APP_PORT}
