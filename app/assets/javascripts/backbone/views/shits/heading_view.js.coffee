ShitPedroSays.Views.Heading ||= {}

class ShitPedroSays.Views.Heading.ShowView extends Backbone.View

  el: 'h1',

  events:
    "mouseover": "cycleImages"
    "mouseout": "stopCycleImages"

  cycleImages: ->
    $('#imgs').show();
    $(@el).toggleClass('woop');
    $('.cycle-slideshow').cycle('resume');

  stopCycleImages: ->
    $('#imgs').hide();
    $('.cycle-slideshow').cycle('pause');
    $(@el).toggleClass('woop');
