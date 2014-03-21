class window.welcomeView extends Backbone.View
  tagName: 'div'
  template: _.template $('#welcomePage').html()

  events:
    'click button.submitEssay': 'submitEssay'

  initialize: ->
    @render()

  render: ->
    console.log 'adsfasdf'
    $('#content').html @template()
    this

  submitEssay: ->
    console.log 'in function'
#    console.log this.get 'essayContents'
    this