define ["marionette"], (Marionette) ->
  class MessageItem extends Backbone.Marionette.ItemView
    template: 'messages/item'
    tagName: "tr"