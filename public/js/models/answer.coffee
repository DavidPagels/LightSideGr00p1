class window.answer extends Backbone.Model
  urlRoot: 'https://try-api.lightsidelabs.com/api'

  defaults:
    answerText: ''

  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token ' #dummy token
        'Content-Type': 'application/json'
      method: 'post'}
    Backbone.sync(method,model,options)


  parse: (response, options) ->
    response