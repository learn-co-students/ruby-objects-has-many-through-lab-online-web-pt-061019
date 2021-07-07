class Song
  attr_accessor :genre, :artist, :name
  @@all= []
  def initialize(name, genre)
    @name = name
    self.genre = genre
    genre.add_song(self)
     @@all << self
  end

  def self.all
    @@all
  end
end
