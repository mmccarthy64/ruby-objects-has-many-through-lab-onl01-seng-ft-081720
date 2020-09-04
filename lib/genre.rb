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
  
  def songs
    Song.all.select {|genre| .name == self}
  end
  
  def artists
    self.songs.map {|genre| genre.artist}
  end
  
end