###
class window.mainPageView extends Backbone.View
  tagName: 'div'
  template: _.template $('#logIn').html()

  initialize: ->
    @render()
    return

  render: ->
    $('#content').html @template()
    this###
