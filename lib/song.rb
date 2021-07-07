class Song 
  attr_accessor :name, :genre, :artist 
  
  ALL = []
  
  def initialize(name, artist, genre)
    @artist = artist 
    @name = name 
    @genre = genre 
   
    ALL << self
  end
    
  def self.all 
    ALL 
  end
    
  def artist 
    @artist 
  end
  
end