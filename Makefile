# Variables
ENVIRONMENT ?= local
COMPOSE_BASE = docker/docker-compose.base.yml
COMPOSE_FILE = docker/docker-compose.$(ENVIRONMENT).yml
ENV_FILE = .env.$(ENVIRONMENT)

# Exportar variables de entorno del archivo .env adecuado
include $(ENV_FILE)
export $(shell sed 's/=.*//' $(ENV_FILE))

# Comandos
.PHONY: up down build help

## Iniciar contenedores utilizando los archivos de configuración de Docker Compose
up:
	@echo "Iniciando entorno $(ENVIRONMENT)..."
	docker-compose -f $(COMPOSE_BASE) -f $(COMPOSE_FILE) up -d

## Detener y eliminar contenedores
down:
	@echo "Deteniendo servicios para entorno $(ENVIRONMENT)..."
	docker-compose -f $(COMPOSE_BASE) -f $(COMPOSE_FILE) down

## Construir imágenes de Docker
build:
	@echo "Construyendo imágenes para entorno $(ENVIRONMENT)..."
	docker-compose -f $(COMPOSE_BASE) -f $(COMPOSE_FILE) build

## Help - Mostrar ayuda con descripciones de los comandos disponibles
help:
	@echo "Comandos disponibles:"
	@echo "  build   - Construir el contenedor de la aplicación"
	@echo "  up      - Iniciar los servicios en modo detached"
	@echo "  down    - Detener y eliminar los servicios"
	@echo "  help    - Mostrar esta ayuda"
