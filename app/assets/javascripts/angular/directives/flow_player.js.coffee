App.directive 'flowPlayer', ->
  (scope, element, attrs) ->

    # Trigger when the selectedScreencast function is called
    # with a screencast
    scope.$watch 'selectedMusicfeed', (musicfeed) ->
      if musicfeed

        # See http://flowplayer.org/docs/
        element.flowplayer
          playlist: [[mp4: musicfeed.video_url]]
          ratio: 9 / 14