require 'pry'

class Artist
    def initialize(name)
        @name = name
        @@all << self
    end

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(name, genre_instance)
        Song.new(name, self, genre_instance)
    end

    def genres
        self.songs.map {|song| song.genre}
    end
end
