ShitPedroSays.Views.Heading ||= {}

class ShitPedroSays.Views.Heading.ShowView extends Backbone.View

  el: 'h1',

  woop: false,

  events: () -> 
    if Modernizr.touch
      "touchstart": "cycleImages"
    else
      "mouseover": "cycleImages"
      "mouseout": "stopCycleImages"

  cycleImages: ->
    if !@woop
      $('#imgs').show();
      $(@el).toggleClass('woop');
      $('.cycle-slideshow').cycle('resume');
      @woop = true
    else
      stopCycleImages()

  stopCycleImages: ->
    if @woop  
      $('#imgs').hide();
      $('.cycle-slideshow').cycle('pause');
      $(@el).toggleClass('woop');
      @woop = false
