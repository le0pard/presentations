define ["backbone", "collections/messages"], (Backbone, MessagesCollection) ->
  class Inbox extends Backbone.Model
    initialize: ->
      @_initMessages()

    _initMessages: =>
      if @has('messages')
        @messages = new MessagesCollection(@get('messages'))
        @unset('messages')
      else
        @messages = new MessagesCollection([])
      @messages.url = "/inbox/#{@get('id')}/messages"

    getMessages: => @messages