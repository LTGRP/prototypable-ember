Prototypable.Router.reopen
  location: 'history'
  rootURL: '/'

Prototypable.Router.map ->
  @resource 'users', ->
    @route 'new'

Prototypable.Router.map (match) ->
  @resource 'users', ->
    @route 'show',
      path: '/:user_id'

Prototypable.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

Prototypable.UsersIndexRoute = Ember.Route.extend
  model: ->
    Prototypable.User.find()
  setupController: (controller, model) ->
    controller.set('users', model)
    @controllerFor('application').set('currentRoute', 'users')

Prototypable.UsersShowRoute = Ember.Route.extend
  model: (params) ->
    Prototypable.User.find(params.user_id)
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('currentRoute', 'users')
