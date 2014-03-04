class window.mainPageView extends Backbone.View
  tagName: 'div'
  template: _.template $('mainPage').html()

  initialize: ->
    @render()
    return

  render: ->
    @$el.html @template(@model.toJSON())
    this