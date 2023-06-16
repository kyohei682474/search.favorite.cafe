process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

const path = require('path');

module.exports = {
  entry: {
    application: './app/javascript/packs/application.js',
    map: './app/javascript/packs/map.js', // ここでmap.jsをエントリーポイントとして設定している
  },
  // ...その他の設定
};