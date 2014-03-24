class window.prompt extends Backbone.Model


  defaults:
    text: ''

  urlRoot: 'https://try-api.lightsidelabs.com/api/prompts/3'

  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token ',
        'Content-Type': 'application/json'
      method: 'get'}
    Backbone.sync(method,model,options);


  parse: (response, options) ->
    response