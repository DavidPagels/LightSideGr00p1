class window.prompt extends Backbone.Model
  urlRoot: '/getPrompt'
  initialize: ->
    console.log 'getting a prompt'

  defaults:
    thePrompt: 'asdfsd'