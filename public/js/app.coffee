class AppRouter extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    console.log "in index"

    return



app = new AppRouter()
Backbone.history.start pushState: true