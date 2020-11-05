# An artist should have many songs and a song should belong to an artist.
# An individual song will need to have a reference to the artist it belongs to, 
# meaning it will need to have an artist=() and artist method. 

# the song class will need to have a class variable that holds all instances of every song that's been created in an array
# To access that array, the song class will also need a class method that returns the class variable holding those instances.

# In order to have an artist find all of it's songs, the song class needs to know about all its song instances and 
# a song instance needs to know about the artist class it belongs to.


class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end

end