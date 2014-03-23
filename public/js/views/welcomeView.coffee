class window.welcomeView extends Backbone.View
  tagName: 'div'
  template: _.template $('#welcomePage').html()
  events:
    'click button.submitEssay': 'submitEssay'
    'click button#hideResults' : 'hideResults'



  initialize: ->
    @render()
    console.log @template()
    #@submitEssay()

  render: ->
    console.log 'rendering welcome'
    @$el.html @template()
    this

  submitEssay: ->
    $('#sandboxResults').show(1000);
    console.log 'in function' #currently not firing
    console.log $('#essayContents').val()
    this

  hideResults: ->
    $('#sandboxResults').hide(1000);