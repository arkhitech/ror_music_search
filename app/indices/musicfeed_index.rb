ThinkingSphinx::Index.define :musicfeed, :with => :active_record do

    # fields
    indexes artistName
    indexes trackName,:as => :track, :sortable => true
    indexes collectionName
    indexes collectionCensoredName
    indexes trackCensoredName
    indexes primaryGenreName,:as => :genre, :sortable => true
    
    # attributes
    has artistId, created_at, updated_at
  
    #to build [ rake ts:index ]
    #to run [rake ts:start]
end
