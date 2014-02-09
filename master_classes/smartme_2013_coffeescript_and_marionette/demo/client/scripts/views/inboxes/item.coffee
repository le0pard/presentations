define ["marionette"], (Marionette) ->
  class InboxesItem extends Backbone.Marionette.ItemView
    template: 'inboxes/item'
    tagName: "li"

    modelEvents:
      'change:is_active':               '_toggleActive'

    events:
      'click .open_inbox_link':         'openInbox'

    openInbox: (e) =>
      e.preventDefault()
      Backbone.history.navigate("inboxes/#{@model.get('id')}", { trigger: true })

    _toggleActive: =>
      if @model.get('is_active') is true
        @$el.addClass('active')
      else
        @$el.removeClass('active')