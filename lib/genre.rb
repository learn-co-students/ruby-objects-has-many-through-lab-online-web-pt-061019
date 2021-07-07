class Genre
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all { |song| song.genre == self }
  end

  def add_song(song)
    songs << song     ## is this because of the song method above?
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

  def self.all
    @@all
end
