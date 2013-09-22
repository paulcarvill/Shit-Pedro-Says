ShitPedroSays.Views.AboutView ||= {}

class ShitPedroSays.Views.AboutView extends Backbone.View

  el: '#about',

  events:
    "click": "showhide"

  showing: false,

  showhide: (e) ->
    if e.target.nodeName != 'DIV' && e.target.nodeName != 'SPAN'
      return
    if !@showing
      $(@el).css('opacity', '0.4')
      $('.q', @el).hide()
      $('.more', @el).show()
      @showing = true
    else
      $(@el).css('opacity', '0.2').css('width', 'auto')
      $('.more', @el).hide()
      $('.q', @el).show()
      @showing = false
