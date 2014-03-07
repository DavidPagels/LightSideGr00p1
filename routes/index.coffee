#
# * GET home page.
#
exports.index = (req, res) ->
    res.locals = {
      title: 'LightSide',
      header: 'LightSide Main Page'
    }
    res.render 'index'

exports.results = (req, res) ->
  res.locals = {
    title: 'LightSide',
    header: 'LightSide Results Page'
  }
  res.render 'results'

exports.csvPage = (req, res) ->
  res.locals = {
    title: 'LightSide',
    header: 'LightSide CSV Upload Page'
  }
  res.render 'csvPage'