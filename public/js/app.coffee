class AppRouter extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    console.log "in index"
    $('#content').append new window.welcomeView().$el
    return

app = new AppRouter()
Backbone.history.start pushState: true