require 'rubygems'
require 'json'
require 'net/http'

class MusicfeedImporter
  def self.import_isearchmusic(search_phrase_from_rake_task)

    # Capture the feed and iterate over each entry
    search_string=search_phrase_from_rake_task
    search_term = search_string.gsub(' ', '+')
    puts "Search Term : #{search_term}"
    
    
    url="https://itunes.apple.com/search?term=#{search_term}"
    feed = Net::HTTP.get_response(URI.parse(url))
#    puts "Feed : #{feed.to_yaml}"
    
    data = feed.body
    parsed_data=JSON.parse(data)
    puts "Parsed Data : #{ parsed_data.to_yaml}"
    
    puts "Result Count: #{ parsed_data["result_count"]}"
    
    parsed_data["results"].each do |entry|

      # Find or create the music feed entry data into our database
      Musicfeed.where(trackId: entry["trackId"]).first_or_create(
       wrapperType:  entry["wrapperType"],
       kind: entry["kind"] ,
       artistId: entry["artistId"],
       collectionId: entry["collectionId"],
       trackId:  entry["trackId"] ,
       artistName:  entry["artistName"],
       collectionName: entry["collectionName"] ,
       trackName: entry["trackName"] ,
       collectionCensoredName: entry["collectionCensoredName"] ,
       trackCensoredName: entry["trackCensoredName"] ,
       artistViewUrl: entry["artistViewUrl"],
       trackViewUrl: entry["trackViewUrl"],
       previewUrl: entry["previewUrl"] ,
       artworkUrl30:  entry["artworkUrl30"],
       artworkUrl60:  entry["artworkUrl60"] ,
       artworkUrl100: entry["artworkUrl100"] ,
       collectionPrice:  entry["collectionPrice"],
       trackPrice: entry["trackPrice"],
       releaseDate:  entry["releaseDate"],
       collectionExplicitness:  entry["collectionExplicitness"] ,
       trackExplicitness: entry["trackExplicitness"] ,
       discCount:  entry["discCount"],
       discNumber: entry["discNumber"],
       trackCount: entry["trackCount"] ,
       trackNumber: entry["trackNumber"] ,
       trackTimeMillis: entry["trackTimeMillis"] ,
       country: entry["country"],
       currency: entry["currency"],
       primaryGenreName: entry["primaryGenreName"] ,
       radioStationUrl: entry["radioStationUrl"] 
      )
   
    end
 
    # Return the number of total music feed for the source
    Musicfeed.where(wrapperType: 'track').count
  end
end