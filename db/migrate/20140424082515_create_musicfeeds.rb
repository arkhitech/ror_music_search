class CreateMusicfeeds < ActiveRecord::Migration
  def change
    create_table :musicfeeds do |t|
      t.string :wrapperType
      t.string :kind
      t.integer :artistId
      t.integer :collectionId
      t.integer :trackId
      t.string :artistName
      t.text :collectionName
      t.string :trackName
      t.text :collectionCensoredName
      t.string :trackCensoredName
      t.string :artistViewUrl
      t.string :collectionViewUrl
      t.string :trackViewUrl
      t.string :previewUrl
      t.string :artworkUrl30
      t.string :artworkUrl60
      t.string :artworkUrl100
      t.decimal :collectionPrice
      t.decimal :trackPrice
      t.datetime :releaseDate
      t.string :collectionExplicitness
      t.string :trackExplicitness
      t.integer :discCount
      t.integer :discNumber
      t.integer :trackCount
      t.integer :trackNumber
      t.integer :trackTimeMillis
      t.string :country
      t.string :currency
      t.string :primaryGenreName
      t.string :radioStationUrl

      t.timestamps
    end
  end
end
