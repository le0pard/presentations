define ["marionette"], (Marionette) ->
  class InboxesDetail extends Backbone.Marionette.ItemView
    template: 'inboxes/detail'

    onRender: =>
      @model.set('is_active', true)

    onBeforeClose: =>
      @model.unset('is_active')