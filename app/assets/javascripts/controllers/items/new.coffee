Prototypable.ItemsNewController = Ember.ObjectController.extend
  headerTitle: 'Create'
  buttonTitle: 'Create'

  save: ->
    @store.commit()
    @content.addObserver 'id', @, 'afterSave'

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('items.newest')

  afterSave: ->
    @content.removeObserver 'id', @, 'afterSave'
    @transitionToRoute('items.show', @content)