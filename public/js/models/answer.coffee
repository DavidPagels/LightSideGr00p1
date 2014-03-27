class window.answer extends Backbone.Model
  urlRoot: 'https://try-api.lightsidelabs.com/api/prediction-tasks/'


  sync: (method,model,options) ->
    $.ajaxSetup {
      headers:
        Authorization: 'Token '
        'Content-Type': 'application/json'
      method: 'post'
      data:
        trained_model: 'https://try-api.lightsidelabs.com/api/trained-models/4'
        answer_set: 'https://try-api.lightsidelabs.com/api/answer-sets/3'
      }
    Backbone.sync(method,model,options)


  parse: (response, options) ->
    response

