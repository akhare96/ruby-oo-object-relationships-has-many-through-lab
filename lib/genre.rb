
class Genre

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
        Song.all.select {|song| song.genre == self}
    end

    def new_song(song, artist)
        Song.new(song, artist, self)
    end

    def artists
        self.songs.collect {|song| song.artist}
    end
end
