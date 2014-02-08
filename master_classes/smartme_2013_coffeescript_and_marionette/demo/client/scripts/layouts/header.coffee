define ["marionette"], (Marionette) ->
  class Header extends Marionette.Layout
    template: 'layouts/header'

    events:
      'click .home_link':                'openMainPage'
      'click .fullscreen_link':          'toggleFullscreen'

    initialize: ->
      # empty

    onDomRefresh: =>
      # empty

    openMainPage: (e) =>
      e.preventDefault()
      Backbone.history.navigate('', { trigger: true })

    # broken by pushState
    # waiting for fix: https://code.google.com/p/chromium/issues/detail?id=171670
    toggleFullscreen: (e) =>
      e.preventDefault()
      doc = window.document
      docEl = doc.documentElement
      requestFullScreen = docEl.requestFullscreen or docEl.mozRequestFullScreen or docEl.webkitRequestFullScreen
      cancelFullScreen = doc.exitFullscreen or doc.mozCancelFullScreen or doc.webkitExitFullscreen
      if @_isInFullscreen()
        cancelFullScreen.call doc
      else
        requestFullScreen.call docEl

    _isInFullscreen: =>
      doc = window.document
      doc.fullscreenElement or doc.mozFullScreenElement or doc.webkitFullscreenElement