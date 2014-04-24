App.factory 'Musicfeed', ['$resource', ($resource) ->
  $resource '/api/musicfeeds/:id', id: '@id'
]