define ["backbone"], (Backbone) ->
  class BaseRouter extends Backbone.Router
    initialize: ->
      @on 'route', @_trackPageview
    # render layouts
    _beforeRouting: =>
      return if @_getApp().main.currentView? and @layoutClass.prototype.template is @_getApp().main.currentView.template
      @layout = new @layoutClass
      @_getApp().main.show @layout
    # GA analytic
    _trackPageview: (trigger, args) =>
      return if window._gaq is `undefined`
      url = Backbone.history.getFragment()
      url = "/#{url}" unless /^\//.test(url)
      window._gaq.push ['_setSiteSpeedSampleRate', 100]
      window._gaq.push ['_trackPageview', url]
    #app
    _getApp: ->
      return @app if @app?
      @app = require('app')
      @app