(function() {
  "use strict";
  var app, colors, express, http, path;

  express = require("express");

  colors = require("colors");

  http = require("http");

  path = require("path");

  app = express();

  app.set("port", process.env.PORT || 3000);

  app.use(express.favicon());

  app.use(express["static"](path.join(__dirname, "../.tmp")));

  app.use(express["static"](path.join(__dirname, "../client")));

  app.get("/", function(req, res) {
    res.sendfile(path.join(__dirname, "../client/index.html"));
  });

  http.createServer(app).listen(app.get("port"), function() {
    console.log("Express server listening on port ".green + app.get("port"), "\nPress Ctrl+C to shutdown".grey);
  });

}).call(this);
