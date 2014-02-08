define ["backbone"], (Backbone) ->
  class BaseRouter extends Backbone.Router
    initialize: ->
      @on 'route', @_trackPageview
    # render layouts
    _beforeRouting: =>
      return if DemoApp.application.main.currentView? and @layoutClass.prototype.template is DemoApp.application.main.currentView.template
      @layout = new @layoutClass
      DemoApp.application.main.show @layout
    # GA analytic
    _trackPageview: (trigger, args) =>
      return if window._gaq is `undefined`
      url = Backbone.history.getFragment()
      url = "/#{url}" unless /^\//.test(url)
      window._gaq.push ['_setSiteSpeedSampleRate', 100]
      window._gaq.push ['_trackPageview', url]