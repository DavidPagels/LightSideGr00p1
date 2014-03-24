class window.prompt extends Backbone.Model

  defaults:
    description: ''

  urlRoot: 'https://try-api.lightsidelabs.com/api/prompts/3'

  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa' #dummy token
        'Content-Type': 'application/json'
      method: 'get'}
    Backbone.sync(method,model,options)
    console.log model


  parse: (response, options) ->
    response
