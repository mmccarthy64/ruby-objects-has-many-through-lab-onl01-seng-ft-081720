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
    self.all.select {|song| song.name == self}
  end
  
  def artists
    self.all.collect {|artist| artist.name == self}
  end
  
end