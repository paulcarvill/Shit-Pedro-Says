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

  colours: ["#E1C852", "#5D78A4", "#D9BF41", "#C45BC2", "#9542B6", "#6342B4", "#4963B5", "#4B95B5", "#4963B5"],
  col: 0,
  images: ['/assets/960x720/1.jpg', '/assets/960x720/2.jpg'];

  newShit: ->
    @view = new ShitPedroSays.Views.Shits.NewView(collection: @shits)
    $("#shit").html(@view.render().el)

  index: ->
    # show the latest Shit

    $('html').css('background-color', @colours[@col]);

    @view = new ShitPedroSays.Views.Shits.ShowView(model: @shits.at(0), colour: @colours[@col])
    $("#shit").html(@view.render().el)

    if @col == @colours.length-1
      @col = 0
    else @col++

  show: (id) ->

    $('#imgs').hide();
    
    $('html').css('background-color', @colours[@col]);

    shit = @shits.get(id)

    Backbone.history.navigate('/shits/' + id, true);

    # send view new colour
    @view = new ShitPedroSays.Views.Shits.ShowView(model: shit, colour: @colours[@col])
    $("#shit").html(@view.render().el)

    if @col == @colours.length-1
      @col = 0
    else @col++

  edit: (id) ->
    shit = @shits.get(id)

    @view = new ShitPedroSays.Views.Shits.EditView(model: shit)
    $("#shit").html(@view.render().el)
