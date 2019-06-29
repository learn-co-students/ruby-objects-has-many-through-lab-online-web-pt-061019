require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)

    # binding.pry
  end

  def songs
    Song.all.select {|song| song.artist == @name}

  end

  def genre
    songs.select {|song| song.genre}
  end
end
