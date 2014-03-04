#
# * GET home page.
#
exports.index = (req, res) ->
    res.locals = {
      title: 'This is the Title',
      header: 'LightSide Main Page'
    }
    res.render 'index'