"use strict"

require.config
  paths:
    jquery: "../components/jquery/jquery"
    underscore: "../components/underscore-amd/underscore"
    backbone: "../components/backbone-amd/backbone"
    handlebars: "../components/handlebars/handlebars.runtime"
    marionette: "../components/backbone.marionette/lib/core/amd/backbone.marionette"
    "backbone.wreqr": "../components/backbone.wreqr/lib/amd/backbone.wreqr"
    "backbone.babysitter": "../components/backbone.babysitter/lib/amd/backbone.babysitter"
    bootstrap: "../components/sass-bootstrap/dist/js/bootstrap"
    hbs: "templates-hbs"
    jst: "templates-jst"

  shim:
    jquery:
      exports: "jQuery"

    underscore:
      exports: "_"

    handlebars:
      exports: "Handlebars"

    backbone:
      deps: ["jquery", "underscore"]
      exports: "Backbone"

    marionette:
      deps: ["jquery", "underscore", "backbone"]
      exports: "Marionette"

require ["app"], (DemoApp) ->
  DemoApp.start()
  return DemoApp