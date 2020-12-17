require 'pry'

class Song
    def initialize(name, artist_instance, genre_instance)
        @name = name
        @artist = artist_instance
        @genre = genre_instance
        @@all << self
    end

    attr_reader :name, :artist, :genre

    @@all = []

    def self.all
        @@all
    end
end
