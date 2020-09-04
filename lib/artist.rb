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
  
  def new_song(name, self, genre)
    song = Song.new(name, self, genre)
    save
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def genres
    self.songs.map {|song| song.genre}
  end
  
end