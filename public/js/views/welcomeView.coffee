class window.welcomeView extends Backbone.View
  tagName: 'div'
  template: _.template $('#welcomePage').html()
  events:
    'click button.submitEssay': 'submitEssay'
    'click button#hideResults' : 'hideResults'



  initialize: ->
    thePrompt = new prompt().fetch().done ->
        $('#promptContents').html(thePrompt.responseJSON.text)
    @render()
    return

  render: ->
    @$el.html @template()
    this

  submitEssay: ->
    $('#sandboxResults').show(1000);
    console.log 'in function' #currently not firing
    postAnswer = new answer({answerText: $('#essayContents').val()})
    console.log postAnswer.get('answerText')
    postAnswer.save {},
       success: ->
         console.log 'answer posted!'
       error: ->
         console.log 'answer denied!'
    this

  hideResults: ->
    $('#sandboxResults').hide(1000);