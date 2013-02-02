Prototypable.Router.reopen
  location: 'history'
  rootURL: '/'

Prototypable.Router.map ->
  @resource 'users', ->
    @route 'new'
