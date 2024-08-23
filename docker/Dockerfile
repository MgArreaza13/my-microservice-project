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
COPY src ./src

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 3000
