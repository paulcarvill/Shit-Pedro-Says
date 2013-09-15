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

    return this

  navigate: (e) ->
    e.preventDefault()

    # make the heading black again because we clicked while hovering
    $('h1').toggleClass('woop');

    window.router.show( @model.collection.next(@model).get('id') )

  cycleImages: ->
    
    # loader for images loads them into an array

    # we can check the length of the array to make sure they're all loaded

    # or maybe put load events on image src?

    # once they're all loaded, enable background switching

    # background switching rapidly loops between pedro and shit by replacing background-image

    #console.log(window.router.images)

    $('#imgs').show();
    $('h1').toggleClass('woop');
    $('.cycle-slideshow').cycle('resume');

  stopCycleImages: ->
    $('#imgs').hide();
    $('.cycle-slideshow').cycle('pause');
    $('h1').toggleClass('woop');
