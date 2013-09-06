//= require jquery
//= require jquery_ujs
//= require handlebars
//= require ember
//= require ember-data
//= require_self

ShitPedroSays = Ember.Application.create();

ShitPedroSays.Router.map(function() {
  //this.resource("shits", { path: "/" });
  this.resource("shits", { path: "/shits" });
  this.resource("shit", { path: "/shits/:shit_id" });
});

ShitPedroSays.IndexRoute = Ember.Route.extend({
    redirect: function() {
        this.transitionTo("shits");
    }
});

ShitPedroSays.ShitsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('shit');
  }
})

ShitPedroSays.ShitRoute = Ember.Route.extend({
  model: function(params) {
    return this.store.find('shit', params.shit_id)
  }
})





ShitPedroSays.Store = DS.Store.extend({
    revision: 1.0
});





ShitPedroSays.Shit = DS.Model.extend({
  content: DS.attr("string")
});





ShitPedroSays.Shit.FIXTURES = [
   { id: 1, content: 'I like weddings.' },
   { id: 2, content: 'I love him; I wish he was my dad.' },
   { id: 3, content: 'Lovely drop!' },
   { id: 4, content: 'Pub?' },
   { id: 5, content: 'Got smashed last night!' },
   { id: 6, content: 'Love my balcs!' },
   { id: 7, content: 'I dunno what that means but i\'m gonna tweet it.' },
   { id: 8, content: 'Wallop!' },
   { id: 9, content: 'We listened to hip hop all day yesterday, that\'s why I couldn\'t sleep last night.' },
   { id: 10, content: 'Man, I can\'t wait to go for a drop, me old fruits!' }
];