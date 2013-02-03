Prototypable.ItemsEditController = Ember.ObjectController.extend
  headerTitle: 'Edit'
  buttonTitle: 'Update'

  save: ->
    @store.commit()
    @transitionToRoute 'items.show', @content

  cancel: ->
    if @content.isDirty
      @content.rollback()
    @transitionToRoute 'items.show', @content

  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionToRoute 'items.featured'