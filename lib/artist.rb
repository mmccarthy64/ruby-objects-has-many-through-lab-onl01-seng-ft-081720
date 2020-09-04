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
    song = Song.new(name)
    @@all << song
  end
  
  def songs
    Song.all.each do |song|
      
  end
  
  def genres
    self.all.collect {|genre| genre.name == self}
  end
  
end