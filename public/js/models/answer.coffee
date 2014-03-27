class window.answer extends Backbone.Model
  urlRoot: 'https://try-api.lightsidelabs.com/api/answers/'

  defaults:
    Text: ''

  sync: (method,model,options) ->
    $.ajaxSetup {
      data:
        author: "https://try-api.lightsidelabs.com/api/authors/1",
        prompt: 'https://try-api.lightsidelabs.com/api/prompts/3',
        answer_set: "https://try-api.lightsidelabs.com/api/answer-sets/3"
      headers:
        Authorization: 'Token ' #dummy token
        'Content-Type': 'application/json'
      method: 'post'}
    Backbone.sync(method,model,options).done()



  parse: (response, options) ->
    response

#model
#https://try-api.lightsidelabs.com/api/trained-models/4
#copora
#https://try-api.lightsidelabs.com/api/corpora/3
