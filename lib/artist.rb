
class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def new_song(song, genre)
        Song.new(song, self, genre)
    end

    def genres
        self.songs.collect {|song| song.genre}
    end
end