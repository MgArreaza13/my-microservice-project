export default {
  transform: {
    '^.+\\.tsx?$': 'babel-jest', // Usa babel-jest para transformar archivos .ts y .tsx
  },
  testEnvironment: 'node',        // Usa un entorno de node para las pruebas
  moduleFileExtensions: ['ts', 'tsx', 'js'], // Extensiones de archivo reconocidas por jest
  roots: ['<rootDir>/tests'],     // Carpeta raíz que contiene pruebas
  testPathIgnorePatterns: ['/node_modules/', '/dist/'], // Ignorar test en estos directorios
  coverageDirectory: 'coverage', // Directorio de salida para reportes de coverage
};
