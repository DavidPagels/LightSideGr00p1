requestLightSide = require 'request'

exports.callGet = (request, response, answer) ->
  options =
    'url': 'https://try-api.lightsidelabs.com/api/',
    method: 'get'
    headers:
      'Content-Type': 'application/json',
      'Authorization': 'Token c35f045779a7564c55df0f7df7fedaf4346b3d40'
  requestLightSide options, (error, response, body) ->
    console.log 'made request'
