# For more information see: http://emberjs.com/guides/routing/

FormClerk.Router.map ()->
  @resource 'forms', ->
    @route 'show', path: '/:form_id'