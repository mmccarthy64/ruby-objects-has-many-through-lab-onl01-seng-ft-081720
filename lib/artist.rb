class Artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name)
    @@all << song
  end
  
  def songs
    self.all.select {|song| song.name == self}
  end
  
  def genres
    self.all.collect do |genre|
      
  end
  
end