class Artist
  attr_accessor :name, :songs, :genres
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    song = Song.new(song_name, self, genre)
    @songs << song
    song
  end
  
  def songs
    @songs
  end
      
    def genres
      self.songs.collect {|song| song.genre}
    end
  end