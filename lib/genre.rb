class Genre

  attr_accessor :name

      @@all = []

  def initialize(name)
      @name = name
      @@all << self
  end

  def self.all
      @@all
  end

  def songs #We're iterating through every instance of Song and returning only the ones where the songs genre matches the current genre instance.
      Song.all.select do |song|#which genres belong to self. we select them all
      song.genre == self
    end
  end

  def artists#call the #songs method from above and find all the songs that have genres that match the artist.
      songs.collect do |song|
      song.artist
  end
end
end
