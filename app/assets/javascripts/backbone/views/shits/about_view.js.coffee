ShitPedroSays.Views.AboutView ||= {}

class ShitPedroSays.Views.AboutView extends Backbone.View

  el: '#about',

  events:
    "mouseover": "show"
    "mouseout": "hide"

  show: ->
    $(@el).css('opacity', '0.4')
    $('.q', @el).hide()
    $('.more', @el).show()

  hide: ->
    $(@el).css('opacity', '0.3').css('width', 'auto')
    $('.more', @el).hide()
    $('.q', @el).show()
