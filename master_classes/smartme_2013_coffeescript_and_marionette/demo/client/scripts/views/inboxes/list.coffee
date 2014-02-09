define ["marionette", "views/inboxes/item"], (Marionette, InboxesItem) ->
  class InboxesList extends Backbone.Marionette.CollectionView
    itemView: InboxesItem
    tagName: "ul"
    className: "nav nav-sidebar"

    initialize: ->
      # empty

    onDomRefresh: =>
      # empty