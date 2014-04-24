require 'musicfeed_importer'

namespace :musicfeed_sync do
  desc 'fetch the searched music entries from ITunes'
  task :fetch_itunes_music_feed,[:search_phrase]=>:environment do |task,args|
    puts "Search Phrase From Rake Task #{args.search_phrase}"
    
    total = MusicfeedImporter.import_isearchmusic(args.search_phrase)
    puts "There are now #{total} feed results from ITunes"
  end
end

#To run use this command
#rake "musicfeed_sync:fetch_itunes_music_feed[jack johnson]"