
const path = require('path');

module.exports = {
  mode: 'development', // または 'production'
  entry: './app/javascript/packs/application.js',
  output: {
    filename: 'application.js',
    path: path.resolve(__dirname, 'app/assets/javascripts'),
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env'],
          },
        },
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader'],
      },
    ],
  },
  resolve: {
    extensions: ['.js'],
    modules: [path.resolve(__dirname, 'app/javascript'), 'node_modules'],
  },
};
