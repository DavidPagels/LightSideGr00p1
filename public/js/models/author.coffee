class window.author extends Backbone.Model
  urlRoot: 'https://try-api.lightsidelabs.com/api/authors/'

  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token c35f045779a7564c55df0f7df7fedaf4346b3d40' #dummy token
        'Content-Type': 'application/json'
      type: 'POST'}
    Backbone.sync(method,model,options).done ->
      console.log model



  parse: (response, options) ->
    response