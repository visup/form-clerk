FormClerk.FormsIndexRoute = Ember.Route.extend
  model: ->
    @store.findAll 'form'