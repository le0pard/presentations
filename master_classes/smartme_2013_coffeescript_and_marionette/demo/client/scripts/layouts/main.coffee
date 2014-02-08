define ["marionette"], (Marionette) ->
  class Main extends Marionette.Layout
    template: 'layouts/main'
    className: 'container-fluid'

    regions:
      leftRegion: '.left_region'
      rightRegion: '.right_region'

    initialize: ->
      # empty

    onDomRefresh: =>
      # empty