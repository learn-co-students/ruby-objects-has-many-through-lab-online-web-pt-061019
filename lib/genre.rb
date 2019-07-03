require "pry"

class Genre

  attr_reader :name

  @@all = []
  @@songs = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.map do |song|
      if song.genre == self
        song
      end
    end
  end

  def artists
    Song.all.map do |song|
      if song.genre == self
        song.artist
      end
    end
  end


end
