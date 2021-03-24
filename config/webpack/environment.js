//const { environment } = require('@rails/webpacker') Commented out to favor PWA
const { config, environment, Environment } = require('@rails/webpacker');
const { resolve } = require('path');
const WebpackerPwa = require('webpacker-pwa');
new WebpackerPwa(config, environment);

const webpack = require('webpack')

environment.plugins.prepend('Provide', 
	new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
    // Popper: ['popper.js', 'default']
  })
)

module.exports = environment




