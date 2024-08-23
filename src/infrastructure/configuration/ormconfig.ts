// src/infrastructure/configuration/ormconfig.ts
import { DataSourceOptions } from "typeorm";
import dotenv from 'dotenv';
dotenv.config();

const typeORMConfig: DataSourceOptions = {
  type: "postgres",
  host: process.env.DB_HOST || "localhost",
  port: Number(process.env.DB_PORT) || 5432,
  username: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  entities: [], // Lista vacía por ahora
  synchronize: true, // No usar en producción
  logging: false,
};

export default typeORMConfig;
