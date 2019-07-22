class Genre
  require "pry"

attr_reader :name, :artist
attr_accessor :song

  @@all = []

  def initialize(name)
    @name = name
    @song = song
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end



  def artists
    Song.all.map do |songs|
      songs.genre
      if songs.genre == self
        songs.artist
     end
    end
  end
end
