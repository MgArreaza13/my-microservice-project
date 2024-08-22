import { Express, Request, Response } from 'express';
import { HealthCheckUseCase } from 'src/application/use-cases/health-check.use-case';
import { HealthCheckController } from 'src/interfaces/http/health-check.controller';

export const defineRoutes = (app: Express): void => {
	const healthCheckController = new HealthCheckController(new HealthCheckUseCase());

  app.get('/', (req: Request, res: Response) => {
    res.send('¡Hola, mundo!');
  });

	app.get('/health', (req: Request, res: Response) => healthCheckController.getHealth(req, res));

  // Define aquí más rutas
};
