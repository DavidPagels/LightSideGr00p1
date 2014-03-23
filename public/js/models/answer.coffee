class window.answer extends Backbone.Model
  urlRoot: '/lightSide'
  initialize: ->
    console.log 'initializing an answer'

  defaults:
    answerText: ''