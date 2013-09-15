ShitPedroSays.Views.Shits ||= {}

class ShitPedroSays.Views.Shits.ShitView extends Backbone.View
  template: JST["backbone/templates/shits/shit"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
