Prototypable.Router.reopen
  location: 'history'
  rootURL: '/'

Prototypable.Router.map ->
  @resource 'users', ->
    @route 'new'

Prototypable.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

Prototypable.UsersIndexRoute = Ember.Route.extend
  model: ->
    Prototypable.User.find()
  setupController: (controller, model) ->
    controller.set('users', model)
    @controllerFor('application').set('currentRoute', 'users')
