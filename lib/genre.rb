class Genre
  attr_accessor :name, :song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @song = song
    @artist = artist
    @@all << self
    self
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs.find_all do |song| 
      song.genre
    end
  end
  
  def artists
    @songs.collect do |genre|
      song.artist
    end
  end
end