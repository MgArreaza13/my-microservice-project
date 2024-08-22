import { createApp } from "./server/app";
import { initializeEnvironment } from "./server/environment";
import { setupGracefulShutdown } from "./server/graceful-shutdown";

const startServer = (): void => {
  initializeEnvironment();

  const app = createApp();
  const port: number = parseInt(process.env.PORT || '3000', 10);
  const server = app.listen(port, () => {
    console.log(`Servidor corriendo en el puerto ${port}`);
  });

  setupGracefulShutdown(server);
};

startServer();
