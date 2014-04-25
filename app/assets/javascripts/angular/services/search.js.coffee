App.factory 'Search', ['$resource', ($resource) ->
    return $resource("/home/search_musicfeeds", {},
      query:
        method: "GET"
        params:
          search: "flake"
        isArray: true
    )
]



