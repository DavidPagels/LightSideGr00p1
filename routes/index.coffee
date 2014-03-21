#
# * GET home page.
#
exports.index = (req, res) ->
  console.log 'inside index'
  res.locals = {
    title: 'LightSide',
    header: 'LightSide Main Page'
  }
  res.render 'index'

exports.results = (req, res) ->
  console.log 'inside results'
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

exports.list = (req, res) ->
  res.send "respond with a resource"
