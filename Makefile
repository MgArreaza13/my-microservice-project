# Variables
COMPOSE_FILE=docker/docker-compose.yml
DOCKER_COMPOSE=docker-compose -f $(COMPOSE_FILE)

# Comandos
.PHONY: build up down logs exec

## Construir el contenedor de la aplicación
build:
	$(DOCKER_COMPOSE) build

## Iniciar los servicios en segundo plano (detached mode)
up:
	$(DOCKER_COMPOSE) up -d

## Detener los servicios
down:
	$(DOCKER_COMPOSE) down

## Ver logs de todos los servicios
logs:
	$(DOCKER_COMPOSE) logs -f

## Ejecutar un comando dentro del contenedor de la aplicación
exec:
	$(DOCKER_COMPOSE) exec app /bin/sh

## Rebuild y restart (compilar de nuevo y reiniciar los servicios)
rebuild:
	$(DOCKER_COMPOSE) down
	$(DOCKER_COMPOSE) build
	$(DOCKER_COMPOSE) up -d

## Help - Ayuda con descripciones
help:
	@echo "Comandos disponibles:"
	@echo "  build   - Construir el contenedor de la aplicación"
	@echo "  up      - Iniciar los servicios en segundo plano (detached mode)"
	@echo "  down    - Detener los servicios"
	@echo "  logs    - Ver logs de todos los servicios"
	@echo "  exec    - Ejecutar un comando dentro del contenedor de la aplicación"
	@echo "  rebuild - Rebuild y restart (compilar de nuevo y reiniciar los servicios)"
