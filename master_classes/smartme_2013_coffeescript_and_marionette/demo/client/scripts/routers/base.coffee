define ["backbone"], (Backbone) ->
  class BaseRouter extends Backbone.Router
    initialize: ->
      @on 'route', @_trackPageview
    # GA analytic
    _trackPageview: (trigger, args) =>
      return if window._gaq is `undefined`
      url = Backbone.history.getFragment()
      url = "/#{url}" unless /^\//.test(url)
      window._gaq.push ['_setSiteSpeedSampleRate', 100]
      window._gaq.push ['_trackPageview', url]