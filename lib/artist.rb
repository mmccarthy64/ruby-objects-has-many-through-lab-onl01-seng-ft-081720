class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    @@all << song
  end
  
  def songs
    self.all.select {|song| song.artist == self}
  end
  
  def genres
    self.songs.map {|song| song.genre}
  end
  
end