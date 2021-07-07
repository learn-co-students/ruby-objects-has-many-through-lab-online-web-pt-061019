class Genre

  attr_accessor :name, :songs, :artists
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |s|
      s.genre
    end
  end

  def artists
    Song.all.collect do |s|
      s.artist
    end
  end

end
