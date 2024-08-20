import express, { Request, Response } from 'express';

// Crear una instancia de Express
const app = express();
const port = process.env.PORT || 3000;

// Definir middleware para parsear JSON y urlencode
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Ruta de ejemplo
app.get('/', (req: Request, res: Response) => {
  res.send('¡Hola, mundo!');
});

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor corriendo en el puerto ${port}`);
});
