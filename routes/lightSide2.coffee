request = require 'request'

exports.callPost: (req, res) ->
  options = {
    'url': 'https://try-api.lightsidelabs.com/api/',
    method: 'get'
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'YOUR TOKEN'
    }
  }

  request options, (error, response, body) ->
    console.log body
    res.send body