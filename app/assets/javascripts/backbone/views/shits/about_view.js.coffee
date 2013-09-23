ShitPedroSays.Views.AboutView ||= {}

class ShitPedroSays.Views.AboutView extends Backbone.View

  el: '#about',

  events: () ->
    if Modernizr.touch
      "touchstart a": "click"
      "touchstart": "showhide"
    else
      "mouseover": "showhide"
      "mouseout": "showhide"
      "click a": "click"

  showing: false,

  showhide: () ->
    if !@showing
      $(@el).css('opacity', '0.4')
      $('.q', @el).hide()
      $('.more', @el).show()
      $('.less', @el).show()
      @showing = true
    else
      @hide()

   hide: () ->
      $(@el).css('opacity', '0.2').css('width', 'auto')
      $('.more', @el).hide()
      $('.q', @el).show()
      $('.less', @el).hide()
      @showing = false

  click: (e) ->
    @showhide()
    window.location.href = e.target.href
    
    