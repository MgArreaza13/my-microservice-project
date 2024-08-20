import express, { Express, Request, Response } from 'express';
import dotenv from 'dotenv';
import path from 'path';

const app: Express = express();

const initializeEnvironment = (): void => {
	const envFilePath: string = path.resolve(
		__dirname,
		`../.env.${process.env.ENV || ''}`,
	);
	dotenv.config({ path: envFilePath });
};

const applyMiddleware = (): void => {
	app.use(express.json());
	app.use(express.urlencoded({ extended: true }));
};

const defineRoutes = (): void => {
	app.get('/', (req: Request, res: Response) => {
		res.send('¡Hola, mundo!');
	});
};

const startServer = (): void => {
	const port: number = parseInt(process.env.PORT || '3000', 10);
	app.listen(port, () => {
		console.log(`Servidor corriendo en el puerto ${port}`);
	});
};

const initializeApp = (): void => {
	initializeEnvironment();
	applyMiddleware();
	defineRoutes();
	startServer();
};

initializeApp();
