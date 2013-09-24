class ShitPedroSays.Routers.ShitsRouter extends Backbone.Router
  initialize: (options) ->
    @shits = new ShitPedroSays.Collections.ShitsCollection()
    @shits.reset options.shits

  routes:
    "shits/index"    : "show"
    "shits/:id"      : "show"
    "shits/.*"       : "show"
    ".*"             : "show"

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

  portraitImages: ['/images/portrait/960x641/1.jpg',
          '/images/portrait/960x641/2.jpg',
          '/images/portrait/960x641/3.jpg',
          '/images/portrait/960x641/4.jpg',
          '/images/portrait/960x641/5.jpg',
          '/images/portrait/960x641/6.jpg',
          '/images/portrait/960x641/7.jpg',
          '/images/portrait/960x641/8.jpg',
          '/images/portrait/960x641/9.jpg',
          '/images/portrait/960x641/10.jpg',
          '/images/portrait/960x641/11.jpg'],

  imageTimes: [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50],

  imagesLoaded: false,

  show: (id) ->
    if !@imagesLoaded
      imgcycle = $('<div id="imgs" class="cycle-slideshow" data-cycle-timeout="1" data-cycle-speed="1" data-cycle-paused="true" data-cycle-fx="none" data-cycle-loader="true" data-cycle-log="false"></div>');

      if !window.portrait
        # loop through images and append them to the DOM witt extended timeout for Shit pics
        imgcycle.append('<img src="' + img + '" data-cycle-timeout="' + window.router.imageTimes[index] + '" ' + '/>') for img, index in @images

      else
        imgcycle.append('<img src="' + img + '" data-cycle-timeout="' + window.router.imageTimes[index] + '" ' + '/>') for img, index in @portraitImages

      $('#content').append(imgcycle);
      imgcycle.cycle();
      @imagesLoaded = true;

    # hide the pedro images when we load a new Shit in
    $('#imgs').hide();
    $('html').css('background-color', @colours[@col]);
    
    # get requested Shit from collection, or load most recent
    if id == undefined
      shit = @shits.at(0)
    else
      shit = @shits.get(id)

    if id != undefined
      Backbone.history.navigate('/shits/' + shit.id, true);
      document.title = "Shit Pedro Says: " + shit.get('content');

    window.heading.stopCycleImages()

    # send view new colour
    @view = new ShitPedroSays.Views.Shits.ShowView(model: shit, colour: @colours[@col])
    $("#shit").html(@view.render().el)

    # hide about text
    window.about.hide()

    if @col == @colours.length-1
      @col = 0
    else @col++
