class window.answer extends Backbone.Model
  urlRoot: 'https://try-api.lightsidelabs.com/api/answers/'

  sync: (method,model,options) ->
    $.ajaxSetup {
      data:
        "author": "https://try-api.lightsidelabs.com/api/authors/48",
        "answer_set": 'https://try-api.lightsidelabs.com/api/answer-sets/5',
        "text": 'this is a test string'
      headers:
        Authorization: 'Token c35f045779a7564c55df0f7df7fedaf4346b3d40' #dummy token
        'Content-Type': 'application/json'
      type: 'POST'}
    console.log options
    Backbone.sync(method,model,options).done ->
      console.log model



  parse: (response, options) ->
    response

#model
#https://try-api.lightsidelabs.com/api/trained-models/4
#copora
#https://try-api.lightsidelabs.com/api/corpora/3
