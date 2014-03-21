class window.welcomeView extends Backbone.View
  tagName: 'div'
  template: _.template $('#welcomePage').html()

  events:
    'click button.submitEssay': 'submitEssay'

  initialize: ->
    @render()
    @submitEssay()

  render: ->
    console.log 'rendering welcome'
    $('#content').html @template()
    this

  submitEssay: ->
    console.log 'in function' #currently not firing
#    console.log this.get 'essayContents'
    this