module.exports = {
  presets: [
    ['@babel/preset-env', { targets: { node: 'current' } }], // Target para la versión actual de Node.js
    '@babel/preset-typescript'  // Preset para TypeScript
  ]
};
