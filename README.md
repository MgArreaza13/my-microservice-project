# My Microservice Project

Este proyecto es un microservicio desarrollado en TypeScript que utiliza la arquitectura hexagonal, DDD, event-driven design, Docker, CI/CD con GitHub Actions, y sigue las mejores prácticas de desarrollo.

## Estructura del Proyecto

- **src/**: Directorio que contiene el código fuente del proyecto.
- **dist/**: Directorio donde se almacena el código compilado.
- **tests/**: Directorio que contiene las pruebas del proyecto.
- **scripts/**: Directorio para almacenar scripts útiles.
- **.github/workflows/**: Directorio donde se almacenan los flujos de trabajo de GitHub Actions.
- **docker/**: Directorio que contiene archivos de configuración de Docker.
- **Makefile**: Archivo que contiene tareas automatizadas.
- **package.json**: Archivo de configuración de npm.
- **tsconfig.json**: Archivo de configuración del compilador de TypeScript.
- **README.md**: Documentación del proyecto.

```
my-microservice-project/
│
├── src/
│   ├── domain/                   # Entidades de dominio y lógica de negocio
│   │   ├── entities/             # Entidades del dominio
│   │   ├── services/             # Servicios de dominio
│   │   └── events/               # Eventos del dominio
│   │
│   ├── application/              # Lógica de aplicación y casos de uso
│   │   ├── use-cases/            # Casos de uso
│   │   └── ports/                # Interfaces (puertos) para adaptadores
│   │
│   ├── infrastructure/           # Implementaciones técnicas específicas
│   │   ├── adapters/             # Adaptadores secundarios (adaptadores para puertos del dominio)
│   │   ├── persistence/          # Implementaciones de almacenamiento de datos
│   │   ├── configuration/        # Configuraciones específicas del entorno
│   │   └── messaging/            # Configuración y adaptadores para mensajería
│   │
│   ├── interfaces/               # Adaptadores primarios (entradas del sistema)
│   │   ├── http/                 # Controladores HTTP
│   │   ├── graphql/              # Controladores GraphQL (opcional)
│   │   ├── cli/                  # Interfaces de línea de comandos (si aplica)
│   │   └── message-handlers/     # Manejadores de eventos de mensajería
│   │
│   └── config/                   # Archivos de configuración de la aplicación
│
├── tests/                        # Archivos de pruebas
│   ├── unit/                     # Pruebas unitarias
│   ├── integration/              # Pruebas de integración
│   └── e2e/                      # Pruebas de extremo a extremo
│
├── scripts/                      # Scripts para tareas automatizadas
│   ├── docker/                   # Scripts relacionados con Docker
│   ├── ci-cd/                    # Scripts de integración y despliegue continuo
│   └── misc/                     # Otros scripts
│
├── .github/                      # Configuración para GitHub Actions
│   └── workflows/                # Definición de flujos de trabajo de CI/CD
│
├── docker/                       # Archivos de configuración de Docker
│   ├── Dockerfile                # Definición de la imagen Docker
│   └── docker-compose.yml        # Definición de servicios Docker
│
├── Makefile                      # Archivo Make para tareas automatizadas
├── package.json                  # Declaración de dependencias y scripts
├── tsconfig.json                 # Configuración de TypeScript
└── README.md                     # Documentación del proyecto

```

## Comenzando

Sigue estos pasos para comenzar a utilizar el proyecto:

1. Clona este repositorio.
2. Instala las dependencias ejecutando `npm install`.
3. Utiliza los scripts definidos en `package.json` para compilar, ejecutar, testear, y más.

## Autor

Miguel Arreaza
