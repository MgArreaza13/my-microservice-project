# # Define una variable para el entorno. Si no se especifica, usa 'dev' por defecto.
# ENVIRONMENT ?= dev

# # Define los comandos para cada tarea

# # Inicia los servicios de Docker en el entorno especificado
# up:
# 	@echo "Iniciando el entorno $(ENVIRONMENT)..."
# 	docker-compose -f docker/docker-compose.$(ENVIRONMENT).yml up -d

# # Detiene los servicios de Docker en el entorno especificado
# down:
# 	@echo "Deteniendo el entorno $(ENVIRONMENT)..."
# 	docker-compose -f docker/docker-compose.$(ENVIRONMENT).yml down


.PHONY: build up down start

build:
    docker-compose build

up:
    docker-compose up -d

down:
    docker-compose down

start:
    docker-compose run app npm start
