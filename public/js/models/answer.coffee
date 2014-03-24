class window.answer extends Backbone.Model
  urlRoot: '/postAnswer'
  initialize: ->
    console.log 'initializing an answer'

  defaults:
    answerText: ''