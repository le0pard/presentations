define ["routers/base", "layouts/main"], (BaseRouter, MainLayout) ->
  class InboxRouter extends BaseRouter
    routes:
      '':             'index'
      'a*':           'index'

    initialize: ->
      super()
      @layoutClass = MainLayout

    index: ->
      #@_beforeRouting()

    _renderCompanies: =>
      companies = new FalconApp.Collections.Companies
      @companiesList = new FalconApp.Views.CompaniesList(collection: companies)
      @layout.mainRegion.show @companiesList
      companies.fetch()


