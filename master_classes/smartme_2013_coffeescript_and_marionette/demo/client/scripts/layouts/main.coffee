define ["marionette"], (Marionette) ->
  class Main extends Marionette.Layout
    template: 'layouts/main'

    initialize: ->
      # empty

    onDomRefresh: =>
      # empty