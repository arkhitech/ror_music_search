App.controller 'MusicfeedsCtrl', ['$scope', 'Musicfeed', ($scope, Musicfeed) ->
  # Attributes accessible on the view
  $scope.selectedMusicfeed = null
  $scope.selectedRow        = null

  # Gather the musicfeeds and set the selected one to the first on success
  $scope.musicfeeds = Musicfeed.query ->
    $scope.selectedMusicfeed = $scope.musicfeeds[0]
    $scope.selectedRow = 0

  # Set the selected musicfeed to the one which was clicked
  $scope.showMusicfeed = (musicfeed, row) ->
    $scope.selectedMusicfeed = musicfeed
    $scope.selectedRow = row
]