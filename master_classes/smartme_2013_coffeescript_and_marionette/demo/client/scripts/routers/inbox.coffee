define ["routers/base", "layouts/main"], (BaseRouter, MainLayout) ->
  class InboxRouter extends BaseRouter
    routes:
      '':             'index'
      'a*':           'index'

    initialize: ->
      super()
      @app = null
      @layout = new MainLayout

    index: ->
      @_getApp().main.show(@layout)

    _getApp: ->
      return @app if @app?
      @app = require('app')
      @app

    _renderInboxes: =>
      #companies = new FalconApp.Collections.Companies
      #@companiesList = new FalconApp.Views.CompaniesList(collection: companies)
      #@layout.mainRegion.show @companiesList
      #companies.fetch()


