define [
  "marionette"
  "holderjs"
  "views/messages/item"
], (Marionette, Holder, MessageItem) ->
  class InboxesDetail extends Backbone.Marionette.CompositeView
    template: 'inboxes/detail'
    itemViewContainer: "tbody.messages_list"
    itemView: MessageItem

    initialize: ->
      @collection = @model.getMessages()

    onDomRefresh: =>
      Holder.run()

    onRender: =>
      @model.set('is_active', true)

    onClose: =>
      @model.unset('is_active')