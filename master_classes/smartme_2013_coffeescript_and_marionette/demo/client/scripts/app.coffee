define ["marionette"], (Marionette) ->
  "use strict"
  App = new Marionette.Application()
  App.addRegions {}
  App.on "initialize:after", ->
    console.log "Application has started"
    return

  App
