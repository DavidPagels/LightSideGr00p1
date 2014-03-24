requestLightSide = require 'request'

exports.postAnswer = (request, response, answer) ->
  options =
    'url': 'https://try-api.lightsidelabs.com/api/',
    method: 'get'
    headers:
      'Content-Type': 'application/json',
      'Authorization': 'Token '
  requestLightSide options, (error, response, body) ->
    console.log 'made request'

