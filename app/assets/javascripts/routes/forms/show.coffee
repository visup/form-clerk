FormClerk.FormsShowRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'form', params.form_id