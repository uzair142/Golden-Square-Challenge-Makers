class Music 
    
    def initialize()
        @tracklist = []
    end
    
    def add(trackname, artist)
      fail "The track could not be added as no trackname has been mentioned" if trackname == ""
      fail "The track could not be added as no artist name has been mentioned" if artist == ""
      @tracklist.append([trackname, artist])
      "Track is successfully added"
    end
    
    def view_tracks()
        if @tracklist.length() == 0
            "Your track list is empty. Kanye maybe?"
        else
            "Your track list includes: #{@tracklist.join(', ')}"
        end
    end
end