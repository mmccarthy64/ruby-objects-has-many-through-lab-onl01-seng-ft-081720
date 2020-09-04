class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    save
  end
  
  def songs
    self.all.select {|song| song.artist == self}
  end
  
  def genres
    self.songs.map {|song| song.genre}
  end
  
end