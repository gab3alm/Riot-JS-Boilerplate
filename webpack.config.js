var webpack = require('webpack');
module.exports = {
  entry: './src/index.js',
  output: {
    path:'./build',
    filename: 'bundle.js'    
  },
  module:{
    loaders:[
    { 
      //expose jquery globally
      test: require.resolve('jquery'), 
      loader: 'expose?jQuery!expose?$' 
    },
    {
      test: /\.js$/,
      loader:'babel-loader',
      exclude: /node_modules/,
      query: {
        presets: ['es2015']
      },
    },
    {
      test: /\.tag$/,
      loader: 'tag',
      exclude: /node_modules/,
    },
    {
      test: /\.css$/,
      loader: "style-loader!css-loader"
    },
    { test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader:"url?limit=10000&mimetype=application/font-woff" },
    { test: /\.(ttf|eot|svg)(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: "file" }
    ]
  }

}