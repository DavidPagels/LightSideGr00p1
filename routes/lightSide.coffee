request = require 'request'

exports.callGet: (req, res) ->
  request.post:
    headers:{
      'Content-Type': 'application/json',
      'Authorization': 'YOUR TOKEN'
    }
    method: 'post'
    url: 'https://try-api.lightsidelabs.com/api/'
  , (error, response, body) ->
     console.log body
     return
