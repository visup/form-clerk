FormClerk.FormsShowController = Ember.ObjectController.extend
  actions:
    saveForm: ->
      @model.save().then (->), ->