define ["marionette"], (Marionette) ->
  class Main extends Marionette.Layout
    template: 'layouts/main'

    regions:
      mainRegion: '.main_region'

    initialize: ->
      # empty

    onDomRefresh: =>
      # empty