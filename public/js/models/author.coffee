class window.author extends Backbone.Model
  urlRoot: 'https://try-api.lightsidelabs.com/api/authors/'

  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token ' #dummy token
        'Content-Type': 'application/json'
      type: 'POST'}
    Backbone.sync(method,model,options).done ->
      console.log model



  parse: (response, options) ->
    response