#
# * GET home page.
#
exports.index = (req, res) ->
    res.locals = {
      title: 'Try LightSide',
      header: 'Try LightSide'
    }
    res.render 'index'

exports.results = (req, res) ->
  res.locals = {
    title: 'Try LightSide',
    header: 'Results'
  }
  res.render 'results'

exports.csvPage = (req, res) ->
  res.locals = {
    title: 'Try LightSide',
    header: 'CSV Upload Page'
  }
  res.render 'csvPage'