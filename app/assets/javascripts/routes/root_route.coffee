# Index route (root url)
Prototypable.IndexRoute = Ember.Route.extend
  model: ->
    Prototypable.Item.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')
    controller.set('items', model)