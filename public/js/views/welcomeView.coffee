class window.welcomeView extends Backbone.View
  tagName: 'div'
  template: _.template $('#welcomePage').html()
  events:
    'click button.submitEssay': 'submitEssay'
    'click button#hideResults' : 'hideResults'



  initialize: ->
    new prompt().fetch()
    @render()

  render: ->
    console.log 'rendering welcome'
    @$el.html @template()
    this

  submitEssay: ->
    $('#sandboxResults').show(1000);
    console.log 'in function' #currently not firing
    console.log $('#essayContents').val()
    postAnswer = new answer({answerText: $('#essayContents').val()})
    console.log 'after new answer'
    postAnswer.save {},
      success: ->
        console.log 'answer posted!'
      error: ->
        console.log 'answer denied!'

    this

  hideResults: ->
    $('#sandboxResults').hide(1000);