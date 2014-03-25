class window.prompt extends Backbone.Model

  defaults:
    description: 'adsfasdf'

  urlRoot: 'https://try-api.lightsidelabs.com/api/prompts/3'

  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token ' #dummy token
        'Content-Type': 'application/json'
      method: 'get'}
    Backbone.sync(method,model,options).done ->
      console.log model.get('description')
    model
    Backbone.sync(method,model,options)
    console.log model.get('description')


  parse: (response, options) ->
    response
