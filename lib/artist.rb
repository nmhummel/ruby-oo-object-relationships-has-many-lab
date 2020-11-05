# An artist should have many songs and a song should belong to an artist.
# an individual artist will need a method that returns a collection of all the songs that belong to that artist.

# In order to have an artist find all of it's songs, the song class needs to know about all its song instances and 
# a song instance needs to know about the artist class it belongs to.



class Artist

    attr_accessor :name
    
    def initialize(name)
        @name = name   #argument name is now @variable name
        #@songs = songs  
    end

    def songs
       Song.all   # has many songs
    end

    def add_song(song)  # takes in an argument of a song...
        song.artist = self
        # and associates that song with the artist by telling the song that it belongs to that artist
    end

    def add_song_by_name(name) # takes in an argument of a name
        song = Song.new(name)
        song.artist = self
    # use that argument to create a new song 
    # and then associate the objects. These methods don't need to return anything.
    end

    def self.song_count
        Song.all.count
    end
    
end