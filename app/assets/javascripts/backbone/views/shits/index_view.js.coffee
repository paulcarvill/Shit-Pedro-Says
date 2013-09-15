ShitPedroSays.Views.Shits ||= {}

class ShitPedroSays.Views.Shits.IndexView extends Backbone.View
  template: JST["backbone/templates/shits/index"]

  initialize: () ->
    @options.shits.bind('reset', @addAll)

  addAll: () =>
    @options.shits.each(@addOne)

  addOne: (shit) =>
    view = new ShitPedroSays.Views.Shits.ShitView({model : shit})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(shits: @options.shits.toJSON() ))
    @addAll()

    return this