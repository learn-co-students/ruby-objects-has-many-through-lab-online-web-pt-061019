class Genre 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
    @songs = []
  end 
  
  def self.all 
    @@all
  end 
  
  def artists 
    @songs.map{|song| song.artist}
  end 
  
end 