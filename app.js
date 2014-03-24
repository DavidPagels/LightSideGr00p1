// Generated by CoffeeScript 1.7.1

/*
Module dependencies.
 */

(function() {
  var app, db, express, http, lightSide, mongoose, path, routes;

  express = require('express');

  routes = require('./routes');

  http = require('http');

  path = require('path');

  mongoose = require('mongoose');

  lightSide = require('./routes/lightSide');

  app = express();

  mongoose.connect('mongodb://localhost/test');

  db = mongoose.connection;

  db.on('error', console.error.bind(console, 'connection error:'));

  db.once('open', function() {
    return console.log('DB connection opened');
  });

  app.set('layout', 'layouts/main');

  app.set('partials', {
    welcome: 'partials/welcome',
    results: 'partials/results',
    csv: 'partials/csv',
    navbar: 'partials/navbar',
    scripts: 'partials/scripts'
  });

  app.engine('html', require("hogan-express"));

  app.enable('view cache');

  app.configure(function() {
    app.set("port", process.env.PORT || 3000);
    app.set("views", __dirname + "/views");
    app.set("view engine", "html");
    app.use(express.favicon());
    app.use(express.logger("dev"));
    app.use(express.json());
    app.use(express.urlencoded());
    app.use(express.methodOverride());
    app.use(express.cookieParser('your secret here'));
    return app.use(app.router);
  });

  app.use(express["static"](path.join(__dirname, "public")));

  app.use(express["static"](path.join(__dirname, 'bower_components')));

  app.configure('development', function() {
    return app.use(express.errorHandler());
  });

  app.get("/", routes.index);

  app.get("/results", routes.results);

  app.get("/csvPage", routes.csvPage);

  app.get("/users", routes.list);

  app.get("/postAnswer", lightSide.postAnswer);

  app.get("/getPrompt", lightSide.getPrompt);

  http.createServer(app).listen(app.get("port"), function() {
    return console.log("Express server listening on port " + app.get("port"));
  });

}).call(this);

//# sourceMappingURL=app.map
