define ["routers/base", "layouts/main"], (BaseRouter, MainLayout) ->
  class InboxRouter extends BaseRouter
    routes:
      '':             'index'
      'a*':           'index'

    initialize: (@app) ->
      super()
      @layout = new MainLayout

    index: ->
      @app.main.show(@layout)
      # render

    _renderInboxes: =>
      #companies = new FalconApp.Collections.Companies
      #@companiesList = new FalconApp.Views.CompaniesList(collection: companies)
      #@layout.mainRegion.show @companiesList
      #companies.fetch()


