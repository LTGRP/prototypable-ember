Prototypable.ApplicationController = Ember.Controller.extend
  isSearch: (->
    @get('currentRoute') == 'search'
    ).property('currentRoute')

  isFeatured: (->
    @get('currentRoute') == 'featured'
    ).property('currentRoute')

  isNewest: (->
    @get('currentRoute') == 'newest'
    ).property('currentRoute')

  isPopular: (->
    @get('currentRoute') == 'popular'
    ).property('currentRoute')

  isRandom: (->
    @get('currentRoute') == 'random'
    ).property('currentRoute')


