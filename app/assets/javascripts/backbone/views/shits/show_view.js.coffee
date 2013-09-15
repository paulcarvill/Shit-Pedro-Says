ShitPedroSays.Views.Shits ||= {}

class ShitPedroSays.Views.Shits.ShowView extends Backbone.View
  template: JST["backbone/templates/shits/show"]
  nextTemplate: JST["backbone/templates/shits/next"]

  events:
    "click .next": "navigate"
    "mouseover .next": "cycleImages"
    "mouseout .next": "stopCycleImages"

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    modelnext = @model.collection.next(@model)

    $(@el).append(@nextTemplate( { 'id' : modelnext.get('id') } )) if modelnext

    # load in the images for the slideshow
    imgcycle = $('<div id="imgs" class="cycle-slideshow" data-cycle-timeout="150" data-cycle-speed="1" data-cycle-paused="true" data-cycle-fx="none" data-cycle-loader="true" data-cycle-log="false"></div>');

    for img in window.router.images
      imgcycle.append('<img src="' + img + '" />');

    $('#content').append(imgcycle);

    return this

  navigate: (e) ->
    e.preventDefault()

    # make the heading black again because we clicked while hovering
    $('h1').toggleClass('woop');

    window.router.show( @model.collection.next(@model).get('id') )

  cycleImages: ->

    $('#imgs').show();
    $('h1').toggleClass('woop');
    $('.cycle-slideshow').cycle('resume');

  stopCycleImages: ->
    $('#imgs').hide();
    $('.cycle-slideshow').cycle('pause');
    $('h1').toggleClass('woop');
