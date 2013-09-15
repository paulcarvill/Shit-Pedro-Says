class ShitPedroSays.Routers.ShitsRouter extends Backbone.Router
  initialize: (options) ->
    @shits = new ShitPedroSays.Collections.ShitsCollection()
    @shits.reset options.shits

  routes:
    "shits/new"      : "newShit"
    "shits/index"    : "index"
    "shits/:id/edit" : "edit"
    "shits/:id"      : "show"
    "shits/.*"        : "index"
    ".*"        : "index"

  newShit: ->
    @view = new ShitPedroSays.Views.Shits.NewView(collection: @shits)
    $("#shits").html(@view.render().el)

  index: ->
    #@view = new ShitPedroSays.Views.Shits.IndexView(shits: @shits)
    
    # show the latest Shit
    @view = new ShitPedroSays.Views.Shits.ShowView(model: @shits.at(@shits.length-1))
    $("#shits").html(@view.render().el)

  show: (id) ->
    shit = @shits.get(id)

    Backbone.history.navigate('/shits/' + id, true);

    @view = new ShitPedroSays.Views.Shits.ShowView(model: shit)
    $("#shits").html(@view.render().el)

  edit: (id) ->
    shit = @shits.get(id)

    @view = new ShitPedroSays.Views.Shits.EditView(model: shit)
    $("#shits").html(@view.render().el)
