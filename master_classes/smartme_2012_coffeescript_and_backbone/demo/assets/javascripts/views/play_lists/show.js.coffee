class SmartmeExample.Views.PlayListsShow extends Backbone.View
  tagName: 'div'
  template: SHT['play_list/show']
  
  initialize: =>
    @model.on 'change', @render
    @model.on 'destroy', @remove

  render: =>
    $(@el).html(@template.render(@model.toJSON()))
    this

  remove: =>
    $(@el).remove()

  onDestroyView: =>
    @model.off 'change', @render
    @model.off 'destroy', @remove