FormClerk.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo 'forms'