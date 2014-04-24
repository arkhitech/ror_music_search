class Musicfeed < ActiveRecord::Base
   
#  validates_presence_of :wrapperType, :kind, :artistId, :collectionId, :trackId,
#    :artistName, :collectionName, :trackName , :collectionCensoredName,
#    :trackCensoredName ,:artistViewUrl, :collectionViewUrl , :trackViewUrl ,
#    :previewUrl, :artworkUrl30 ,:artworkUrl60 , :artworkUrl100 , :collectionPrice,
#    :trackPrice, :releaseDate, :collectionExplicitness , :trackExplicitness,
#    :discCount, :discNumber, :trackCount, :trackNumber, :trackTimeMillis,
#    :country, :currency, :primaryGenreName, :radioStationUrl
  

  define_index do
    indexes artistName
    indexes trackName
    
  end
#    validates_uniqueness_of :trackIndex
end
