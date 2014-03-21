class window.welcomeView extends Backbone.View
  tagName: 'div'
  template: _.template $('#welcomePage').html()

  initialize: ->
    @render()

  render: ->
    console.log 'adsfasdf'
    $('#content').html @template()
    this