require 'pry'

class Genre
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
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.map {|song| song.artist}
    end
end
