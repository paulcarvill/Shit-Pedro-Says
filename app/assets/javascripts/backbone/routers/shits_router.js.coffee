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
  images: ['/images/960x720/1.jpg',
          '/images/960x720/2.jpg',
          '/images/960x720/3.jpg',
          '/images/960x720/4.jpg',
          '/images/shit/1.jpg',
          '/images/960x720/5.jpg',
          '/images/960x720/6.jpg',
          '/images/960x720/7.jpg',
          '/images/960x720/8.jpg',
          '/images/960x720/9.jpg',
          '/images/960x720/10.jpg',
          '/images/960x641/1.jpg',
          '/images/960x641/2.jpg',
          '/images/shit/2.jpg',
          '/images/960x641/3.jpg',
          '/images/960x641/4.jpg',
          '/images/960x641/5.jpg',
          '/images/960x641/6.jpg',
          '/images/shit/3.jpg',
          '/images/960x641/7.jpg',
          '/images/960x641/8.jpg',
          '/images/960x641/9.jpg',
          '/images/shit/4.jpg',
          '/images/960x641/10.jpg',
          '/images/960x641/11.jpg'],

  imageTimes: [150, 150, 150, 150, 300, 150, 150, 150, 150, 150, 150, 150, 150, 300, 150, 150, 150, 150, 300, 150, 150, 150, 300, 150, 150],

  imagesLoaded: false,

  newShit: ->
    @view = new ShitPedroSays.Views.Shits.NewView(collection: @shits)
    $("#shit").html(@view.render().el)

  index: ->
    if !@imagesLoaded
      imgcycle = $('<div id="imgs" class="cycle-slideshow" data-cycle-timeout="150" data-cycle-speed="1" data-cycle-paused="true" data-cycle-fx="none" data-cycle-loader="true" data-cycle-log="false"></div>');

      for img,index in @images
        console.log(img, index)
        imgcycle.append('<img src="' + img + '" data-cycle-timeout="' + window.router.imageTimes[index] + '" ' + '/>');

      $('#content').append(imgcycle);

      imgcycle.cycle();
      @imagesLoaded = true;

    # show the latest Shit

    $('html').css('background-color', @colours[@col]);

    @view = new ShitPedroSays.Views.Shits.ShowView(model: @shits.at(0), colour: @colours[@col])

    $("#shit").html(@view.render().el)

    if @col == @colours.length-1
      @col = 0
    else @col++

  show: (id) ->

    # load in the images for the slideshow only once
    if !@imagesLoaded
      imgcycle = $('<div id="imgs" class="cycle-slideshow" data-cycle-timeout="150" data-cycle-speed="1" data-cycle-paused="true" data-cycle-fx="none" data-cycle-loader="true" data-cycle-log="false"></div>');

      for img in @images
        imgcycle.append('<img src="' + img + '" />');

      $('#content').append(imgcycle);

      imgcycle.cycle();
      @imagesLoaded = true;

    # hide the pedro images when we load a new Shit in
    $('#imgs').hide();

    # set background colour to be next one in our array
    $('html').css('background-color', @colours[@col]);

    shit = @shits.get(id)

    Backbone.history.navigate('/shits/' + id, true);

    document.title = "Shit Pedro Says: " + shit.get('content');

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
