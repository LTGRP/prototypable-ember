Prototypable.IndexController = Ember.ObjectController.extend
  search: ->
    @transitionToRoute 'items.index', @content.query
