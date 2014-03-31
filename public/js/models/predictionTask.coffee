class window.predictionTask extends Backbone.Model
  urlRoot: 'https://try-api.lightsidelabs.com/api/prediction-tasks/'


  sync: (method,model,options) ->
    $.ajaxSetup {
      data:
        "trained_model": "https://try-api.lightsidelabs.com/api/trained-models/4",
        "answer_set": "https://try-api.lightsidelabs.com/api/answer-sets/3"
      headers:
        "Authorization": 'Token ' #dummy token
        "Content-Type": 'application/json'
      method: 'post'}
    Backbone.sync(method,model,options).done ->
      console.log model


  parse: (response, options) ->
    response