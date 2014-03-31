class window.welcomeView extends Backbone.View
  tagName: 'div'
  template: _.template $('#welcomePage').html()
  events:
    'click button.submitEssay': 'submitEssay'
    'click button#hideResults' : 'hideResults'



  initialize: ->
    thePrompt = new prompt().fetch().done ->
        #console.log(thePrompt.responseJSON)
        $('#promptContents').html(thePrompt.responseJSON.text)
        theAuthor = new author({designator: "DavidP"}).fetch()
    @render()
    return

  render: ->
    @$el.html @template()
    this

  submitEssay: ->
    $('#sandboxResults').show(1000);
    console.log 'in function'
    postAnswer = new answer({"author": "https://try-api.lightsidelabs.com/api/authors/48", "answer_set": 'https://try-api.lightsidelabs.com/api/answer-sets/3', "text": "test text"}).save()
    this

  hideResults: ->
    $('#sandboxResults').hide(1000);