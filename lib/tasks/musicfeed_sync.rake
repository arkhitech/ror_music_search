require 'musicfeed_importer'

namespace :musicfeed_sync do
  desc 'fetch the searched music entries from ITunes'
  task :fetch_itunes_music_feed => :environment do
    total = MusicfeedImporter.import_isearchmusic("jack johnson")
    puts "There are now #{total} feed results from ITunes"
  end
end