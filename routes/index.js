// Generated by CoffeeScript 1.7.1
(function() {
  exports.index = function(req, res) {
    res.locals = {
      title: 'LightSide',
      header: 'LightSide Main Page'
    };
    return res.render('index');
  };

  exports.results = function(req, res) {
    res.locals = {
      title: 'LightSide',
      header: 'LightSide Results Page'
    };
    return res.render('results');
  };

  exports.csvPage = function(req, res) {
    res.locals = {
      title: 'LightSide',
      header: 'LightSide CSV Upload Page'
    };
    return res.render('csvPage');
  };

}).call(this);

//# sourceMappingURL=index.map
