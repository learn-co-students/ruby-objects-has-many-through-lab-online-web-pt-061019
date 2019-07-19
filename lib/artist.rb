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

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(song, genre)
    Song.new(song, self, genre)
  end

  def genres
    Song.all.map {|song| song.genre}
  end
end
