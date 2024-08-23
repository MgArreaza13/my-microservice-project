# # Usa una imagen base de Node.js
FROM node:22-alpine

# # Instala bash para una mayor flexibilidad en comandos
# RUN apk add --no-cache bash

# # Establece el directorio de trabajo
# WORKDIR /usr/src/app

# # Copia los archivos de configuración y dependencias al contenedor
# COPY package.json package-lock.json tsconfig.json ./

# # Instalar dependencias
# RUN npm install

# # Copiar la aplicación (fuente y otros archivos necesarios)
# COPY . .

# # Exponer el puerto en el que corre la aplicación
# EXPOSE 3000



# Instala bash para una mayor flexibilidad en los comandos
RUN apk add --no-cache bash

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de configuración y dependencias al contenedor
COPY package*.json ./
COPY tsconfig.json ./

RUN npm install tsx

# Instala las dependencias
# RUN npm ci

RUN ls

# Copia el código fuente al contenedor
COPY src ./src

# Compila la aplicación TypeScript
# RUN npm run build

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 3000
