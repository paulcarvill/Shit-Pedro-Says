ShitPedroSays.Views.Shits ||= {}

class ShitPedroSays.Views.Shits.ShowView extends Backbone.View
  template: JST["backbone/templates/shits/show"]
  nextTemplate: JST["backbone/templates/shits/next"]
  prevTemplate: JST["backbone/templates/shits/prev"]

  events:
    "click a#prev": "navigate"

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    modelnext = @model.collection.next(@model)
    modelprev = @model.collection.prev(@model)

    $(@el).append(@nextTemplate( { 'id' : modelnext.get('id') } )) if modelnext
    $(@el).append(@prevTemplate( { 'id' : modelprev.get('id') } )) if modelprev

    return this

  navigate: (e) ->
    e.preventDefault()
    window.router.show( @model.collection.prev(@model).get('id') )
