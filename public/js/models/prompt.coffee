class window.prompt extends Backbone.Model

  defaults:
    description: ''

  urlRoot: 'https://try-api.lightsidelabs.com/api/prompts/3'

  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token '
        'Content-Type': 'application/json'
      method: 'post'}
    Backbone.sync(method,model,options).done ->
      console.log model


  parse: (response, options) ->
    response
