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
    $("#shit").html(@view.render().el)

  index: ->
    #@view = new ShitPedroSays.Views.Shits.IndexView(shits: @shits)
    
    # show the latest Shit
    @view = new ShitPedroSays.Views.Shits.ShowView(model: @shits.at(0))
    $("#shit").html(@view.render().el)

  show: (id) ->
    console.log('in show');
    shit = @shits.get(id)

    Backbone.history.navigate('/shits/' + id, true);

    @view = new ShitPedroSays.Views.Shits.ShowView(model: shit)
    $("#shit").html(@view.render().el)

  edit: (id) ->
    shit = @shits.get(id)

    @view = new ShitPedroSays.Views.Shits.EditView(model: shit)
    $("#shit").html(@view.render().el)
