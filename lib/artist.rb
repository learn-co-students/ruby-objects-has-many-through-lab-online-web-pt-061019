class Artist

  attr_reader :name

  @@all = []

  def initialize(artist_name)
    @name = artist_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre)
    Song.new(song_name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.map {|song| song.genre}
  end

end
