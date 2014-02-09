define [
  "routers/base"
  "layouts/main"
  "collections/inboxes"
  "views/inboxes/list"
  "views/inboxes/info"
  "views/inboxes/detail"
], (BaseRouter, MainLayout, InboxesCollection, InboxesListView, InboxesInfoView, InboxesDetailView) ->
  class InboxRouter extends BaseRouter
    routes:
      'inboxes/:id': 'show'
      '':             'index'

    initialize: ->
      super()
      @layoutClass = MainLayout
      @inboxes = new InboxesCollection
      @companiesList = new InboxesListView(collection: @inboxes)

    index: =>
      @_beforeRouting()
      @layout.leftRegion.show @companiesList
      @layout.rightRegion.show(new InboxesInfoView)
      @inboxes.fetch() unless @inboxes.length

    show: (id) =>
      @_beforeRouting()
      @layout.leftRegion.show @companiesList
      unless @inboxes.length
        @inboxes.fetch
          success: =>
            @_renderInbox(@inboxes.get(id))
      else
        @_renderInbox(@inboxes.get(id))

    _renderInbox: (inbox) =>
      @layout.rightRegion.show(new InboxesDetailView(model: inbox))