// Generated by CoffeeScript 1.7.1
(function() {
  var requestLightSide;

  requestLightSide = require('request');

  exports.callGet = function(request, response, answer) {
    var options;
    options = {
      'url': 'https://try-api.lightsidelabs.com/api/',
      method: 'get',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token c35f045779a7564c55df0f7df7fedaf4346b3d40'
      }
    };
    return requestLightSide(options, function(error, response, body) {
      return console.log('made request');
    });
  };

}).call(this);

//# sourceMappingURL=lightSide.map
