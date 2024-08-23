# My Microservice Project

Este proyecto es un microservicio desarrollado en TypeScript que utiliza la arquitectura hexagonal, DDD, diseño impulsado por eventos, Docker, CI/CD con GitHub Actions, y sigue las mejores prácticas de desarrollo.

## Estructura del Proyecto

- **src/**: Directorio que contiene el código fuente del proyecto.
  - **server/**: Configuración del servidor y gestión de la aplicación.
    - `index.ts`: Punto de entrada para iniciar el servidor.
    - `app.ts Configuración y exportación de la instancia de la aplicación Express.
    - `routes.ts`: Definición de rutas.
    - `middleware.ts`: Configuración de middlewares.
    - `environment.ts`: Configuración del entorno.
    - `graceful-shutdown.ts`: Manejo del cierre gracioso del servidor.
  - **domain/**: Entidades de dominio y lógica de negocio.
    - `entities/`: Lugar para las entidades del dominio.
    - `services/`: Servicios de lógica de negocio.
    - `events/`: Manejo de eventos de dominio.
  - **application/**: Lógica de aplicación y casos de uso.
    - `use-cases/`: Implementación de casos de uso.
    - `ports/`: Definición de interfaces para los adaptadores secundarios.
  - **infrastructure/**: Implementaciones técnicas específicas.
    - `adapters/`: Adaptadores para conectar con infraestructuras externas (ej: TypeORMDataSource).
    - `persistence/`: Persistencia de datos, mantiene repositorios y mapeos.
    - `configuration/`: Configuraciones específicas de infraestructura.
      - `ormconfig.ts`: Configuración de TypeORM.
    - `messaging/`: Manejo de mensajería y eventos.
  - **interfaces/**: Adaptadores primarios.
    - `http/`: Adaptadores HTTP.
    - `graphql/`: Adaptadores para GraphQL.
    - `cli/`: Adaptadores de línea de comandos.
    - `message-handlers/`: Manejadores de mensajes y eventos.
  - **config/**: Archivos de configuración de la aplicación.

- **tests/**: Directorio que contiene las pruebas del proyecto.
  - `unit/`: Pruebas unitarias.
  - `integration/`: Pruebas de integración.
  - `e2e/`: Pruebas de extremo a extremo.

- **scripts/**: Directorio para almacenar scripts útiles.
  - `docker/`: Scripts relacionados con Docker.
  - `ci-cd/`: Scripts relacionados con CI/CD.
  - `misc/`: Otros scripts.

- **.github/workflows/**: Flujos de trabajo para GitHub Actions.

- **docker/**: Archivos de configuración de Docker.
  - `Dockerfile`: Archivo de configuración de Docker para construir la imagen.
  - `docker-compose.yml`: Configuración para Docker Compose.

- **Makefile**: Archivo que contiene tareas automatizadas.
- **package.json**: Declaración de dependencias y scripts.
- **tsconfig.json**: Configuración del compilador de TypeScript.
- **README.md**: Documentación del proyecto.

## Comenzando

Sigue estos pasos para comenzar a utilizar el proyecto:

1. Clona este repositorio.
2. Instala las dependencias ejecutando `npm install`.
3. Utiliza los scripts definidos en `package.json` para compilar, ejecutar, testear, y más.

### Scripts Útiles

- `npm run build`: Compila el proyecto TypeScript en JavaScript.
- `npm start`: Inicia el servidor.
- `npm test`: Ejecuta las pruebas unitarias.
- `npm run test:integration`: Ejecuta las pruebas de integración.
- `npm run test:e2e`: Ejecuta las pruebas de extremo a extremo.

## Health Check

El sistema incluye un endpoint de health check para verificar el estado de la aplicación. Puedes accederlo en: /health
Este endpoint devuelve el estado actual del servicio.

## Configuración de Base de Datos

La aplicación usa TypeORM para el manejo de la base de datos. La configuración de la base de datos se encuentra en `src/infrastructure/configuration/ormconfig.ts`, y está diseñada para ser adaptada fácilmente para otros tipos de bases de datos en el futuro.

```
my-microservices-project
├── .editorconfig
├── .env
├── .env.dev
├── .env.local
├── .env.prod
├── .env.qa
├── .env.staging
├── .eslintrc.json
├── .github
│   └── workflows
├── .gitignore
├── .nvmrc
├── .prettierrc
├── Dockerfile
├── Makefile
├── README.md
├── app
├── babel.config.js
├── docker
├── docker-compose.yml
├── jest.config.js
├── package-lock.json
├── package.json
├── scripts
│   ├── ci-cd
│   ├── docker
│   └── misc
├── src
│   ├── application
│   │   ├── ports
│   │   └── use-cases
│   │       └── health-check.use-case.ts
│   ├── config
│   ├── domain
│   │   ├── entities
│   │   ├── events
│   │   └── services
│   ├── index.ts
│   ├── infrastructure
│   │   ├── adapters
│   │   │   └── TypeORMDataSource.ts
│   │   ├── configuration
│   │   │   └── ormconfig.ts
│   │   ├── messaging
│   │   └── persistence
│   ├── interfaces
│   │   ├── http
│   │   │   └── health-check.controller.ts
│   │   └── message-handlers
│   └── server
│       ├── app.ts
│       ├── environment.ts
│       ├── graceful-shutdown.ts
│       ├── middleware.ts
│       └── routes.ts
├── tests
│   ├── e2e
│   │   ├── features
│   │   │   └── health-check.feature
│   │   └── steps
│   │       └── health-check.steps.ts
│   ├── integration
│   │   └── health-check.integration.test.ts
│   └── unit
│       └── health-check.use-case.test.ts
└── tsconfig.json

```


## Autor

Miguel Arreaza
