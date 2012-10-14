class SmartmeExample.Routers.Main extends Backbone.Router
  routes:
    ""                        : "index"
    "play_list/:id"           : "playList"
    "*a"                      : "index"
  
  initialize: (options) =>
    #initialData = []
    initialData = [{id: 1, name: 'Pendulum'}, {id: 2, name: 'One Republic'}, {id: 3, name: 'Moby'}]
    SmartmeExample.playLists = new SmartmeExample.Collections.PlayLists(initialData)
    @playListsView = new SmartmeExample.Views.MainIndex(collection: SmartmeExample.playLists)
    @on 'all', @beforRouting

  beforRouting: (trigger, args) =>
    $("#playLists dd").removeClass("active")
    switch trigger
      when "route:playList"
        $("#playLists dd[data-id='#{args}']").addClass("active")
    
  index: =>
    @_renderMainView()
  playList: (id) =>
    @_renderMainView() 
    playList = SmartmeExample.playLists.get(id)
    showView = new SmartmeExample.Views.PlayListsShow(model: playList)
    $('#selectedPlayList').empty().html(showView.render().el)
    
  _renderMainView: =>
    return false if SmartmeExample.currentMainView is @playListsView
    SmartmeExample.updateMainContainer(@playListsView)
      