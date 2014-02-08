define [
  "marionette"
  "hbs"
  "routers/inbox"
  "layouts/header"
], (Marionette, HandlebarsTemplates, InboxRouter, HeaderLayout) ->
  "use strict"
  # templates
  Backbone.Marionette.Renderer.render = (template, data) ->
    throw "Template '#{template}' not found!" unless HandlebarsTemplates[template]
    HandlebarsTemplates[template](data)
  # app
  class DemoApp extends Backbone.Marionette.Application

    onStart: (options) =>
      @_initRegions()
      @_initRoutes()

    _initRegions: =>
      @addRegions
        header: "#header"
        footer: "#footer"
        main: "#main"
      @_initHeader()
      #@_initFooter()

    _initHeader: =>
      @header.show(new HeaderLayout)

    _initFooter: =>
      #@footerView = new FalconApp.Layouts.Footer
      #@footer.show(@footerView)

    _initRoutes: =>
      # routes
      new InboxRouter
      # history
      if Modernizr.history
        Backbone.history.start
          pushState: true
      else
        Backbone.history.start
          silent: true
        Backbone.history.navigate window.location.pathname,
          trigger: true

  # start app
  new DemoApp