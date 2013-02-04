# Item routes
Prototypable.ItemsIndexRoute = Ember.Route.extend
  model: ->
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'all')
    controller.set('items', model)

Prototypable.ItemsNewRoute = Ember.Route.extend
  model: ->
    Prototypable.Item.createRecord()
  setupController: (controller, model) ->
    controller.set('item', model)

Prototypable.ItemsShowRoute = Ember.Route.extend
  model: (params) ->
    Prototypable.Item.find(params.item_id)
  setupController: (controller, model) ->
    controller.set('item', model)

Prototypable.ItemsFeaturedRoute = Ember.Route.extend
  model: ->
    # TODO: featured items
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'featured')
    controller.set('items', model)

Prototypable.ItemsNewestRoute = Ember.Route.extend
  model: ->
    # TODO: items sorted by created_at
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'newest')
    controller.set('items', model)

Prototypable.ItemsPopularRoute = Ember.Route.extend
  model: ->
    # TODO: items sorted by popularity
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'popular')
    controller.set('items', model)

Prototypable.ItemsRandomRoute = Ember.Route.extend
  model: ->
    # TODO: actually grab a random model
    Prototypable.Item.find(331)
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'random')
    controller.set('item', model)