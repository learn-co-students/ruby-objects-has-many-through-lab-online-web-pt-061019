class Artist 
  
  attr_accessor :name, :genre
  
  ALL = []
  
  def initialize(name)
    @name = name 
    @genre = genre
    ALL << self 
  end
  
  def self.all 
    ALL 
  end
  
  def new_song(name, genre) 
    Song.new(name, self, genre)       #creates a new song class referencing what is initiated
  end
  
  def songs 
    Song.all.select do |song|       #defines when song is iterated over, attaches it to self
      song.artist == self
    end 
  end
  
  def genres 
    Song.all.map do |song|
      song.genre
    end
  end
  
end