# Setup
Prototypable.Router.reopen
  location: 'history'
  rootURL: '/'

# Router maps
Prototypable.Router.map (match) ->
  @resource 'items', ->
    @route 'new'
    @route 'edit'
      path: '/:item_id/edit'
    @route 'show'
      path: '/:item_id'
    @route 'featured'
    @route 'newest'
    @route 'popular'
    @route 'random'

# Index route (root url)
Prototypable.IndexRoute = Ember.Route.extend
  model: ->
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'search')
    controller.set('items', model)

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
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'featured')
    controller.set('items', model)

Prototypable.ItemsNewestRoute = Ember.Route.extend
  model: ->
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'newest')
    controller.set('items', model)

Prototypable.ItemsPopularRoute = Ember.Route.extend
  model: ->
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'popular')
    controller.set('items', model)

Prototypable.ItemsRandomRoute = Ember.Route.extend
  model: ->
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'random')
    controller.set('items', model)


