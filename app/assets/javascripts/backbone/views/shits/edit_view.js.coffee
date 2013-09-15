ShitPedroSays.Views.Shits ||= {}

class ShitPedroSays.Views.Shits.EditView extends Backbone.View
  template : JST["backbone/templates/shits/edit"]

  events :
    "submit #edit-shit" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (shit) =>
        @model = shit
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
