define ["backbone", "models/message"], (Backbone, MessageModel) ->
  class Messages extends Backbone.Collection
    model: MessageModel