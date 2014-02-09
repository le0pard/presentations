define ["marionette"], (Marionette) ->
  class InboxesItem extends Backbone.Marionette.ItemView
    template: 'inboxes/item'
    tagName: "li"

    events:
      'click .open_inbox_link':         'openInbox'

    openInbox: (e) =>
      e.preventDefault()
      Backbone.history.navigate("inboxes/#{@model.get('id')}", { trigger: true })