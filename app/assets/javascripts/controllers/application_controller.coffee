Prototypable.ApplicationController = Ember.Controller.extend
  isHome: (->
    @get('currentRoute') == 'home'
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

  isAllItems: (->
    @get('currentRoute') == 'all'
  ).property('currentRoute')


