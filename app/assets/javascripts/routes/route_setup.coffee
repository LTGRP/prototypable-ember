# Setup
Prototypable.Router.reopen
  location: 'history'
  rootURL: '/'

# Router map
Prototypable.Router.map (match) ->
  @resource 'items', ->
    @route 'index'
    @route 'new'
    @route 'edit'
      path: '/:item_id/edit'
    @route 'show'
      path: '/:item_id'
    @route 'featured'
    @route 'newest'
    @route 'popular'
    @route 'random'
    @route 'search'
      path: '/search?:query'

