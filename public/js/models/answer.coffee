class window.answer extends Backbone.Model
  urlRoot: '/postAnswer'
  initialize: ->
    console.log 'initializing an answer'

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