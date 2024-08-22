import { Express, Request, Response } from 'express';

export const defineRoutes = (app: Express): void => {
  app.get('/', (req: Request, res: Response) => {
    res.send('¡Hola, mundo!');
  });

  // Define aquí más rutas
};
