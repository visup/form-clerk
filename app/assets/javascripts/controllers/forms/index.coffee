FormClerk.FormsIndexController = Ember.ArrayController.extend
  actions:
    createForm: ->
      name = @get 'newName'
      return if !name.trim()

      form = @store.createRecord 'form',
        name: name

      @set 'newName', ''

      form.save()