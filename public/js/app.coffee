class AppRouter extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    console.log "in index"
    $('#content').html new window.welcomeView().$el
    return

app = new AppRouter()
Backbone.history.start pushState: true