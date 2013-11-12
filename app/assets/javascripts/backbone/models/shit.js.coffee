class ShitPedroSays.Models.Shit extends Backbone.Model
  paramRoot: 'shit'

  defaults:
    content: null

  next: ()->
    return true if this.collection.next(this)

  prev: ()->
    return true if this.collection.prev(this)

class ShitPedroSays.Collections.ShitsCollection extends Backbone.Collection
  model: ShitPedroSays.Models.Shit
  url: '/shits'

  next: (model) ->

    console.log('here')
    
    i = this.at(this.indexOf(model))
    
    console.log(i)

    if undefined == i || i < 0
      return false

    if this.at(this.indexOf(model) + 1)
      return this.at(this.indexOf(model) + 1)
    else
      return this.at(0)

  prev: (model) ->
    i = this.at(this.indexOf(model))
    
    if undefined == i || i < 1
      return false

    return this.at(this.indexOf(model) - 1)